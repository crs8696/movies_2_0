class DirectorResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :date_of_birth, :string
  attribute :name, :string
  attribute :bio, :string
  attribute :image, :string
  attribute :filmography, :integer

  # Direct associations

  has_many   :movies

  # Indirect associations

  has_many :bookmarks do
    assign_each do |director, bookmarks|
      bookmarks.select do |b|
        b.id.in?(director.bookmarks.map(&:id))
      end
    end
  end

  has_many :reviews do
    assign_each do |director, reviews|
      reviews.select do |r|
        r.id.in?(director.reviews.map(&:id))
      end
    end
  end

end

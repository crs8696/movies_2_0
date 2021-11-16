class ActorResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :image, :string
  attribute :date_of_birth, :string
  attribute :name, :string
  attribute :details, :string

  # Direct associations

  has_many   :movies,
             foreign_key: :cast

  # Indirect associations

  has_many :bookmarks do
    assign_each do |actor, bookmarks|
      bookmarks.select do |b|
        b.id.in?(actor.bookmarks.map(&:id))
      end
    end
  end

  has_many :reviews do
    assign_each do |actor, reviews|
      reviews.select do |r|
        r.id.in?(actor.reviews.map(&:id))
      end
    end
  end
end

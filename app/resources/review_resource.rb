class ReviewResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :movie_id, :integer
  attribute :director_id, :integer
  attribute :year, :string
  attribute :duration, :string
  attribute :review_content, :integer
  attribute :cast, :integer

  # Direct associations

  belongs_to :movie

  # Indirect associations

end

class MovieResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :title, :integer
  attribute :year, :date
  attribute :duration, :string
  attribute :description, :string
  attribute :director_id, :integer
  attribute :details, :integer
  attribute :cast, :integer

  # Direct associations

  has_many   :reviews

  # Indirect associations

end

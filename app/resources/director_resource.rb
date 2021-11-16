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

  # Indirect associations

end

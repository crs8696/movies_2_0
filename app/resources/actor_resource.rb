class ActorResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :image, :string
  attribute :date_of_birth, :string
  attribute :name, :string
  attribute :details, :string

  # Direct associations

  # Indirect associations

end

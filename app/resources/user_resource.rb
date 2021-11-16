class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :integer
  attribute :password, :string
  attribute :log_in_time, :datetime

  # Direct associations

  # Indirect associations

end

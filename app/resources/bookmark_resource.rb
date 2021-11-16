class BookmarkResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :user_bookmarks, :integer

  # Direct associations

  belongs_to :bookmarker,
             resource: MovieResource,
             foreign_key: :user_bookmarks

  # Indirect associations

end

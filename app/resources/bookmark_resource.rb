class BookmarkResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :user_bookmarks, :integer

  # Direct associations

  belongs_to :user_bookmark,
             resource: UserResource,
             foreign_key: :user_bookmarks

  belongs_to :bookmarker,
             resource: MovieResource,
             foreign_key: :user_bookmarks

  # Indirect associations

  has_one    :director
  has_one    :cast_of_actor,
             resource: ActorResource

  filter :cast, :integer do
    eq do |scope, value|
      scope.eager_load(:cast_of_actor).where(:movies => {:cast => value})
    end
  end

  filter :director_id, :integer do
    eq do |scope, value|
      scope.eager_load(:director).where(:movies => {:director_id => value})
    end
  end
end

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

  belongs_to :reviewer,
             resource: UserResource,
             foreign_key: :review_content

  belongs_to :movie

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

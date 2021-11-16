class Review < ApplicationRecord
  # Direct associations

  belongs_to :reviewer,
             class_name: "User",
             foreign_key: "review_content"

  belongs_to :movie

  # Indirect associations

  has_one    :director,
             through: :movie,
             source: :director

  has_one    :cast_of_actor,
             through: :movie,
             source: :cast_of_actors

  # Validations

  # Scopes

  def to_s
    movie.to_s
  end
end

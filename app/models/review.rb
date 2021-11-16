class Review < ApplicationRecord
  # Direct associations

  belongs_to :reviewer,
             :class_name => "User",
             :foreign_key => "review_content"

  belongs_to :movie

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    movie.to_s
  end

end

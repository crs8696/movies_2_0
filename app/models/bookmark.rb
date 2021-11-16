class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :bookmarker,
             :class_name => "Movie",
             :foreign_key => "user_bookmarks"

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    bookmarker.to_s
  end

end

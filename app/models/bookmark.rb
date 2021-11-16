class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :user_bookmark,
             :class_name => "User",
             :foreign_key => "user_bookmarks"

  belongs_to :bookmarker,
             :class_name => "Movie",
             :foreign_key => "user_bookmarks"

  # Indirect associations

  has_one    :cast_of_actor,
             :through => :bookmarker,
             :source => :cast_of_actors

  # Validations

  # Scopes

  def to_s
    bookmarker.to_s
  end

end

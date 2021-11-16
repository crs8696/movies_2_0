class Movie < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :foreign_key => "user_bookmarks",
             :dependent => :destroy

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    title
  end

end

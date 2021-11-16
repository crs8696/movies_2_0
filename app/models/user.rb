class User < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :foreign_key => "user_bookmarks",
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    name
  end

end

class Actor < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  has_many   :movies,
             :foreign_key => "cast",
             :dependent => :destroy

  # Indirect associations

  has_many   :bookmarks,
             :through => :movies,
             :source => :bookmarks

  has_many   :reviews,
             :through => :movies,
             :source => :reviews

  # Validations

  # Scopes

  def to_s
    created_at
  end

end

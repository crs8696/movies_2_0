class Actor < ApplicationRecord
  # Direct associations

  has_many   :movies,
             :foreign_key => "cast",
             :dependent => :destroy

  # Indirect associations

  has_many   :reviews,
             :through => :movies,
             :source => :reviews

  # Validations

  # Scopes

  def to_s
    created_at
  end

end

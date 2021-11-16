class Director < ApplicationRecord
  # Direct associations

  has_many   :movies,
             :dependent => :destroy

  # Indirect associations

  has_many   :reviews,
             :through => :movies,
             :source => :reviews

  # Validations

  # Scopes

  def to_s
    date_of_birth
  end

end

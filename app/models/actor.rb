class Actor < ApplicationRecord
  # Direct associations

  has_many   :movies,
             :foreign_key => "cast",
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    created_at
  end

end

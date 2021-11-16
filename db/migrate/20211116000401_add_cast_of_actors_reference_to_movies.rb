class AddCastOfActorsReferenceToMovies < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :movies, :actors, column: :cast
    add_index :movies, :cast
    change_column_null :movies, :cast, false
  end
end

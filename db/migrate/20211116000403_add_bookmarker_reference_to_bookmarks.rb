class AddBookmarkerReferenceToBookmarks < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :bookmarks, :movies, column: :user_bookmarks
    add_index :bookmarks, :user_bookmarks
    change_column_null :bookmarks, :user_bookmarks, false
  end
end

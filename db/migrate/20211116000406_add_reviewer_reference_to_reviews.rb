class AddReviewerReferenceToReviews < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :reviews, :users, column: :review_content
    add_index :reviews, :review_content
    change_column_null :reviews, :review_content, false
  end
end

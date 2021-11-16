class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :movie_id
      t.integer :director_id
      t.string :year
      t.string :duration
      t.integer :review_content
      t.integer :cast

      t.timestamps
    end
  end
end

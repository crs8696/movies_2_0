class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.integer :title
      t.date :year
      t.string :duration
      t.text :description
      t.integer :director_id
      t.integer :details
      t.integer :cast

      t.timestamps
    end
  end
end

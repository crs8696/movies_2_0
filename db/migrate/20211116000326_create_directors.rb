class CreateDirectors < ActiveRecord::Migration[6.0]
  def change
    create_table :directors do |t|
      t.string :date_of_birth
      t.string :name
      t.text :bio
      t.string :image
      t.integer :filmography

      t.timestamps
    end
  end
end

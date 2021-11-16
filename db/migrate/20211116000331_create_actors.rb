class CreateActors < ActiveRecord::Migration[6.0]
  def change
    create_table :actors do |t|
      t.string :image
      t.string :date_of_birth
      t.string :name
      t.string :details

      t.timestamps
    end
  end
end

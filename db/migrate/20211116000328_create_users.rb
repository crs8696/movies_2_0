class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.integer :name
      t.string :password
      t.datetime :log_in_time

      t.timestamps
    end
  end
end

class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :gender
      t.integer :age

      t.timestamps null: false
    end
  end
end

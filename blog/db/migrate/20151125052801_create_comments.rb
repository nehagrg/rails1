class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :user
      t.belongs_to :articale
      t.string :comment

      t.timestamps null: false
    end
  end
end

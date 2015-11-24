class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.belongs_to :supplier
      t.string :account_number

      t.timestamps null: false
    end
  end
end

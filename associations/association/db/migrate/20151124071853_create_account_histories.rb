class CreateAccountHistories < ActiveRecord::Migration
  def change
    create_table :account_histories do |t|
      t.belongs_to :account
      t.integer :credit_rating

      t.timestamps null: false
    end
  end
end

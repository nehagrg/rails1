class AddcolumnintoUser < ActiveRecord::Migration
  def change
  	add_column :users, :exprience, :integer
  end
end

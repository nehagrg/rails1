class AddcolumnintoPerson < ActiveRecord::Migration
  def change
  	add_column :people, :email, :string
  	add_column :people, :email_confirmation, :string
  end
end

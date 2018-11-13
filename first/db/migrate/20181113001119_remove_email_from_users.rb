class RemoveEmailFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :email, :string
    remove_column :users, :name, :string
    add_column :users, :username, :string, null:false, unique:true
  end
end

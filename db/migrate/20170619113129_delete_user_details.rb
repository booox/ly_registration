class DeleteUserDetails < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :name
    remove_column :users, :phonenumber
    remove_column :users, :cnid
    remove_column :users, :gender
  end
end

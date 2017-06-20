class AddDetailsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :phonenumber, :string
    add_column :users, :cnid, :string
    add_column :users, :gender, :string

  end
end

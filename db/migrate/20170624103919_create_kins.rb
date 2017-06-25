class CreateKins < ActiveRecord::Migration[5.0]
  def change
    create_table :kins do |t|
      t.integer :user_id, :index => true
      t.string :name
      t.string :cnid
      t.string :phonenumber
      t.string :gender

      t.timestamps
    end
  end
end

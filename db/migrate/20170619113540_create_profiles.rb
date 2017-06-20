class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.integer :user_id, :index => true
      t.string :name
      t.string :phonenumber
      t.string :cnid
      t.string :gender

      t.timestamps
    end
  end
end

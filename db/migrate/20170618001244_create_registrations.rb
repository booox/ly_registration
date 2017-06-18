class CreateRegistrations < ActiveRecord::Migration[5.0]
  def change
    create_table :registrations do |t|
      t.integer :user_id
      t.integer :batch_id
      t.integer :line_id
      t.boolean :room_share, default: true
      t.string :room_mate

      t.timestamps
    end
  end
end

class AddIsRoomShare < ActiveRecord::Migration[5.0]
  def change
    add_column :registrations, :is_room_share, :boolean, default: true
  end
end

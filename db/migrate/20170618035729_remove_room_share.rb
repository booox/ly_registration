class RemoveRoomShare < ActiveRecord::Migration[5.0]
  def change
    remove_column :registrations, :room_share
  end
end

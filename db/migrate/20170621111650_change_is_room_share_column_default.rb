class ChangeIsRoomShareColumnDefault < ActiveRecord::Migration[5.0]
  def change
    change_column :registrations, :is_room_share, :boolean, default: false
  end
end

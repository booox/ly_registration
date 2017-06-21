class Registration < ApplicationRecord
  # 0 - 包间，1 - 合住
  # ROOM_TYPE = ["private", "share"]

  belongs_to :batch
  belongs_to :line
  belongs_to :user

  validates :user_id, presence: true
  validates :batch_id, presence: true
  validates :line_id, presence: true
  validates_uniqueness_of :user_id
  validates :room_mate, presence: true, if: Proc.new { |a| a.is_room_share? }

end

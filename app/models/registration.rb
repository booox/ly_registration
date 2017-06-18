class Registration < ApplicationRecord
  # 0 - 包间，1 - 合住
  # ROOM_TYPE = ["private", "share"]

  belongs_to :batch
  belongs_to :line

  validates :user_id, presence: true
  validates :batch_id, presence: true
  validates :line_id, presence: true
end

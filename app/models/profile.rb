class Profile < ApplicationRecord
  belongs_to :user

  validates :name, :phonenumber, :cnid, :gender, presence: true

  PHONENUMBER_FORMAT=/\d{11}/
  validates :phonenumber,
            :format => {with: PHONENUMBER_FORMAT,
              message: "手机号必须为 11 位数字" }

  CNID_FORMAT=/\d{18}/
  validates :cnid,
            :format => {with: CNID_FORMAT,
              message: "身份证号必须为 18 位数字" }

  # validates :phonenumber, length: { minimum: 9, maximum: 9 }, numericality: { only_integer: true }


end

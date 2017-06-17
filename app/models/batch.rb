class Batch < ApplicationRecord
  # before_save :assign_days

  has_many :lines

  protected

  # def assign_days
  #   self.days = (self.return_date.to_date - self.start_date.to_date).to_i + 1
  # end
end

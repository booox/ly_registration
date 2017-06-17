class Line < ApplicationRecord
  before_save :assign_days

  belongs_to :batch

  protected

  def assign_days
    self.days = (self.return_date.to_date - self.start_date.to_date).to_i + 1
  end
end

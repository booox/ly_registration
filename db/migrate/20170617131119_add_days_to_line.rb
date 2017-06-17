class AddDaysToLine < ActiveRecord::Migration[5.0]
  def change
    add_column :lines, :days, :integer
  end
end

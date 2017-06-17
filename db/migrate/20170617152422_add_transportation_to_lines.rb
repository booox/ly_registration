class AddTransportationToLines < ActiveRecord::Migration[5.0]
  def change
    add_column :lines, :transportations, :text, array: true
  end
end

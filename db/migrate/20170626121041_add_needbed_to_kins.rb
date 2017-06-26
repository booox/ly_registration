class AddNeedbedToKins < ActiveRecord::Migration[5.0]
  def change
    add_column :kins, :needbed, :boolean, default: false
  end
end

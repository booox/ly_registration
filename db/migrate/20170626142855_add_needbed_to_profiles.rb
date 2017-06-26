class AddNeedbedToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :needbed, :boolean, default: false
  end
end

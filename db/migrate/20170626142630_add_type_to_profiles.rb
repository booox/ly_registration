class AddTypeToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :type, :string
  end
end

class ChangeProfileGenderColumn < ActiveRecord::Migration[5.0]
  def change
    change_column :profiles, :gender, :integer
  end
end

class ChangeGenderFromIntegerToString < ActiveRecord::Migration[5.0]
  def change
    change_column :profiles, :gender, :string
  end
end

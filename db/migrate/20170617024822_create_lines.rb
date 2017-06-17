class CreateLines < ActiveRecord::Migration[5.0]
  def change
    create_table :lines do |t|
      t.string :title
      t.text :description
      t.integer :batch_id
      t.datetime :start_date
      t.datetime :return_date
      t.integer :days

      t.timestamps
    end
  end
end

class CreateBatches < ActiveRecord::Migration[5.0]
  def change
    create_table :batches do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :return_date

      t.timestamps
    end
  end
end

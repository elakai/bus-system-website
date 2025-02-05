class CreateBuses < ActiveRecord::Migration[7.1]
  def change
    create_table :buses do |t|
      t.integer :body_number
      t.string :plate_number

      t.timestamps
    end
  end
end

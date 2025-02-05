class CreateDrivers < ActiveRecord::Migration[7.1]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :contact_number
      t.references :bus, null: false, foreign_key: true

      t.timestamps
    end
  end
end

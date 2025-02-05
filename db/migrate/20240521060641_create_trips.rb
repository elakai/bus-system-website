class CreateTrips < ActiveRecord::Migration[7.1]
  def change
    create_table :trips do |t|
      t.datetime :schedule
      t.string :origin
      t.string :destination
      t.integer :number_of_passengers,  default: 0
      t.float :unit_fare, default: 0.0
      t.float :total_fare, default: 0.0
      t.references :bus, null: false, foreign_key: true

      t.timestamps
    end
  end
end

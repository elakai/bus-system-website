class ChangeDefaultPriceOfTrips < ActiveRecord::Migration[7.1]
  def change
    change_column_default :trips, :number_of_passengers, 0
    change_column_default :trips, :unit_fare, 0.0
    change_column_default :trips, :total_fare, 0.0
  end
end

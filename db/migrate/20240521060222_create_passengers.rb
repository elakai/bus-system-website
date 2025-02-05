class CreatePassengers < ActiveRecord::Migration[7.1]
  def change
    create_table :passengers do |t|
      t.string :name
      t.string :contact_number
      t.string :email_address

      t.timestamps
    end
  end
end

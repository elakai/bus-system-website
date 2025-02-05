class Trip < ApplicationRecord
  belongs_to :bus
  has_many :reservations, dependent: :delete_all
  has_many :passengers, through: :reservations, dependent: :delete_all
end

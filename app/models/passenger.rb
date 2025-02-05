class Passenger < ApplicationRecord
  has_many :reservations, dependent: :delete_all
  has_many :trips, through: :reservations, dependent: :delete_all
  has_one_attached :image

  validates :name, presence: true

  validate :acceptable_image

  def acceptable_image
    return unless image.attached?
    errors.add(:image, "is too big") unless image.blob.byte_size <= 1.megabyte
    acceptable_types = ["image/jpeg", "image/png"]
    errors.add(:image, "must be a JPEG or PNG") unless acceptable_types.include?(image.content_type)
  end
end


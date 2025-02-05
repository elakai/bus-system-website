class Driver < ApplicationRecord
  belongs_to :bus
  has_one_attached :image

  validate :acceptable_image

  def acceptable_image
      return unless image.attached?
      errors.add(:image, "is too big") unless image.blob.byte_size <= 1.megabyte
      acceptable_types = ["image/jpeg", "image/png"]
      errors.add(:image, "must be a JPEG or PNG") unless acceptable_types.include?(image.content_type)
  end

end

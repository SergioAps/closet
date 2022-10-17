class Product < ApplicationRecord
  validates :name, :description, :image_url, :adquisition_date, presence: true
  validates :name, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|jpeg|png)\z}i,
        message: 'must be a URL for GIF, JPEG, JPG or PNG image.'
  }
  validates :adquisition_date, presence: true, comparison: { less_than: DateTime.now }
end

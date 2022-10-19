class Product < ApplicationRecord
  has_one_attached :photo
  validates :name, :description, :adquisition_date, presence: true
  validates :name, uniqueness: true
  validates :adquisition_date, presence: true, comparison: { less_than: DateTime.now }
end

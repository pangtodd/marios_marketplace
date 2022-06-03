class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :price, presence: true
  validates :price, numericality: true
  validates :country_of_origin, presence: true
end
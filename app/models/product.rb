class Product < ApplicationRecord
  validates_presence_of :name

  # has_many :available_products
  # has_many :sizes, through: :available_products
  # has_many :colors, trough: :available_products
end
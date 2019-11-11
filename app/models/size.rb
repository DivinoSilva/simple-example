class Size < ApplicationRecord
  class InvalidSize < StandardError; end
  validates_presence_of :name

  # has_many :available_products
  # has_many :products, through: :available_products
end
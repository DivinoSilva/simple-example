class Size < ApplicationRecord
  class InvalidSize < StandardError; end

  before_save :valide_size
  validates_presence_of :name

  # has_many :available_products
  # has_many :products, through: :available_products

  private

  def valide_size
    raise InvalidSize.new('Não foi possível realizar o cadastro. Tamanho inválido') if name.to_i <= 0
  end
end
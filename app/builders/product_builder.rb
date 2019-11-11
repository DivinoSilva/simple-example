class ProductBuilder
  def initialize(attributes)

    @attributes = attributes
  end

  def build
    AvailableProduct.new(product: product, color: color, size: size) if color && size
  end

  private

  def color
    Color.find(@attributes[:color_id])
  rescue => e
    nil
  end

  def size
    Size.find(@attributes[:size_id])
  rescue => e
    nil
  end

  def product
    Product.new(name: @attributes[:name], description: @attributes[:description])
  end
end
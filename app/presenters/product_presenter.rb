class ProductPresenter
  def initialize(available_product)
    @available_product = available_product
  end

  def id
    @available_product.product.id
  end

  def name
    @available_product.product.name
  end

  def description
    @available_product.product.description
  end

  def size
    @available_product.size.name
  end

  def color
    @available_product.color.name
  end
end
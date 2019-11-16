module ItemsHelper
  def options_for_item_select
    options_for_select(
      Product.order(:name).map{ |i| ["#{i.name} - (#{i.description})","#{i.id}"]}
    )
  end
end
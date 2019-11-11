module SizesHelper
  def options_for_size_select
    options_for_select(
      Size.order(:name).map{ |s| ["#{s.name}","#{s.id}"]}
    )
  end
end
module SizesHelper
  def options_for_size_select
    # require "pry";binding.pry
    options_for_select(
      Size.order(:name).map{ |s| ["#{s.id}","#{s.name}"]}
    )
  end
end
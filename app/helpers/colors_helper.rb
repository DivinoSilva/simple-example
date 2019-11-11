module ColorsHelper
  def options_for_color_select
    options_for_select(
      Color.order(:name).map{ |c| ["#{c.name}","#{c.id}"]}
    )
  end
end
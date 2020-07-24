class ResistorColorDuo
  @band_colors = %w[
    black
    brown
    red
    orange
    yellow
    green
    blue
    violet
    grey
    white
  ]

  def self.value(color_array)
    color_array.first(2).map { |color| @band_colors.index(color) }.join.to_i
  end
end

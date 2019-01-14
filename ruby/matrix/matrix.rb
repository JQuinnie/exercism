class Matrix
  attr_accessor :rows, :columns

  def initialize(str)
    @rows = parse_row(str)
    @columns = column(rows)
  end

  def parse_row(input_str)
    input_str.split("\n").map { |row| row.split(' ').map(&:to_i) }
  end

  def column(rows)
    rows.transpose
  end
end

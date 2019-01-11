class Matrix
  attr_accessor :rows, :columns

  def initialize(str)
    @rows = row(str)
    @columns = column(rows)
  end

  def row(input_str)
    array = input_str.split("\n")
    array2 = array.map { |row| row.split(' ') }
    array2.map { |row| row.map(&:to_i) }
  end

  def column(rows)
    rows.transpose
  end
end

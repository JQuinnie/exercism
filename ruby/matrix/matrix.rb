class Matrix
  attr_accessor :rows, :columns

  def initialize(input_string)
    @rows = parse_rows(input_string)
    @columns = rows.transpose
  end

  def parse_rows(string)
    string.each_line.map { |line| line.split.map(&:to_i) }
  end

end

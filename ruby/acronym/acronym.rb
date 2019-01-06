class Acronym
  def self.abbreviate(str)
    array = str.split(/\W/)
    array.map { |word| word[0] }.join.upcase
  end
end

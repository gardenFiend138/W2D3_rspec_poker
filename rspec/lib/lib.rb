class Array

  def remove_dups
    result = []

    i = 0
    while i < self.length
      result << self[i] unless result.include?(self[i])
      i += 1
    end
    result
  end

  def two_sum
    result = []

    self.each_with_index do |el, idx|
      ((idx + 1)...self.length).each do |idx2|
        result << [idx, idx2] if el + self[idx2] == 0
      end
    end
    result
  end

  # finish my_transpose
  # def my_transpose
  #   result = [[0],[],[]]
  #
  #
  #   until self.length == result.length
  #     i = 0
  #     self.each_with_index do |el, idx|
  #       result[i][idx] = el[i]
  #       i += 1
  #     end
  #
  # end
end

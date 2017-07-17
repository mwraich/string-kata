module StringCalculator

  def self.add(string)
    numbers = string.split(',').map(&:to_i)
    numbers.inject(0){|sum,n| sum + n }
  end

  # ...and here when the above becomes too complex.

end

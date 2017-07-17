module StringCalculator

  def self.add(string)
    formated_string = string.tr("\n",',')
    numbers = formated_string.split(',').map(&:to_i)
    numbers.inject(0){|sum,n| sum + n }
  end

  # ...and here when the above becomes too complex.

end

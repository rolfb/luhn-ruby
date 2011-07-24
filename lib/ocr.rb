class OCR

  def self.mod10(number) 
    products = luhn_doubled(number)
    sum = products.inject { |t,p| t + sum_of(p) }
    mod10 = 10 - (sum % 10)
    mod10 == 10 ? 0 : mod10
  end

  def self.luhn_doubled(number)
    numbers = split_digits(number).reverse
    numbers.map.with_index do |n,i|
      i.even? ? n*2 : n*1
    end.reverse
  end
  
  def self.sum_of(number)
    split_digits(number).inject(:+)
  end

  def self.valid?(number)
    numbers = split_digits(number)
    numbers.pop == mod10(numbers.join)
  end

  def self.split_digits(number)
    number.to_s.split(//).map(&:to_i)
  end

end

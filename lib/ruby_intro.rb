# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  end
  sum = 0
  arr.each { |a| sum+=a }
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  tmp=arr.max(2)
  return tmp.sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty?
    return FALSE
  end
  if arr.length==1
    return FALSE
  end
  dict={}
  arr.each_with_index do |number, index|
    if dict[n - number]
      return TRUE
    else
      dict[number] = index
    end
  end
  return FALSE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return 'Hello, '.concat(name)
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return /^[bcdfghjklmnpqrstvwxyz]/i === s
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.empty?
    return FALSE
  end
  if s.tr('01','') == ''
      binary=s.to_i(2)
      if binary % 4 == 0
        return TRUE
      end
  end
  return FALSE
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  attr_reader :isbn, :price
    
  def price_as_string 
    return "$%.2f"%[@price]
  end
  
  def initialize isbn, price
    raise ArgumentError if isbn==''
    raise ArgumentError if price <= 0
    @isbn = isbn
    @price = price
  end

  
  # def ibsn 
  #   raise ArgumentError if ibsn.empty
  #   @ibsn
  # end
  
  # def price 
  #   raise ArgumentError if price <= 0
  #   @price
  # end
  
  # def price=(price) 
  #   @price=price  
  # end
  
  # def ibsn=(ibsn) 
  #   @ibsn=ibsn  
  # end

  
end


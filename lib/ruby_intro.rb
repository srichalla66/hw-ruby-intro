# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    0
  elsif arr.length == 1
    arr[0]
  else
    sorted = arr.sort.reverse
    sorted[0] + sorted[1]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty? || arr.length == 1
    false
  else
    for i in 0..arr.length
      for j in i..arr.length
        if i + j == n
          return true
        end
      end
    end
  end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
def initialize(isbn, price)
  if isbn.empty?
    raise ArgumentError.new("Expected a value for ISBN")
  end
  
  if price <= 0
    raise ArgumentError.new("Expected a price greater than 0")
  end
  
  @isbn = isbn
  @price = price
end

def price_as_string
  "$%.2f" % @price
end

def isbn
  @isbn
end

def isbn=(x)
  @isbn = x
end

def price
  @price
end

def price=(x)
  @price = x
end

end

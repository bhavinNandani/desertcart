# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34

@storage = {}
def fib_stored(n)
	@storage[n] if @storage.key(n)
	return n if (0..1).include?(n)
	@storage[n] = fib_stored( n-1 ) + fib_stored( n-2 )
end

def fib_stored_(n, result)
	result[n] if result.key(n)
	return n if (0..1).include?(n)
	@storage[n] = fib_stored_( n-1 ) + fib_stored_( n-2 )
end

p "Please enter a n"
input = gets.chomp.to_i
p "fibonnaci(#{input}) => #{fib_stored(input)}"
# for i in 1..input.to_i
# 	p "fibonnaci(#{i}) => #{fib_stored(i)}"
# end


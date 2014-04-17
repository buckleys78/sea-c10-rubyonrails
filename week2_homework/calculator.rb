class Calculator

	def sum(arr)
		s = 0
		arr.each do |i|
			s += i
		end
		return s
	end

	def multiply(*arr)
		prod = 1
		arr.flatten.each do |i|
			prod *= i
		end
		prod
	end

	def pow base, exp
		base ** exp
	end

	def fac n
		prod = 1
		i = 0
		while i < n do
			i += 1
			prod *= i
		end
		prod
	end
end
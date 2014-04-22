<<<<<<< HEAD
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
=======
class Calculator

  def sum numbers
    numbers.inject(0, :+)
  end

  def multiply *numbers
    numbers.flatten.inject(:*)
  end

  def pow base, exp
    base ** exp
    multiply Array.new(exp, base)
  end

  def fac n
    return 1 if n.zero?
    n.downto(1).inject(:*)
    # n * fac(n-1)
    # 5 * 4 * 3 * 2 * 1 * 1
    # 4 * 3 * 2 * 1 * 1
    # 3 * 2 * 1 * 1
    # 2 * 1 * 1
    # 1 * 1
    # 1
    #multiply (1..n).to_a
  end
>>>>>>> 43774fc1a5b2a21a94c834808ecaa78ba9c654e9
end
defmodule Test do

		def double(n) do
			n*2
		end

		def farenheit(f) do
			IO.puts("#{f} Farenheit is #{(f - 32)/1.8} Celsius")
		end

		def arearec(b,h) do
			IO.puts("The area of the Rectangle is: #{b*h}")
		end

		def areasq(s) do
			IO.puts("The area of the Square is: #{s*s}")
		end

		def areacircl(r) do
			IO.puts("The area of the Circle is: #{3.14 * r *r }")
		end

		def product(m, n) do
			if m == 0 do
				0
			else
			 n + product(m - 1, n)
			end
		end

		def exp(x,y) do
			if y == 0 do
				1
		else
			product(x,exp(x,y-1))
		end
	  end

	  def expx(x,y) do
	  		
	  		if rem(y,2) == 0 do
	  			product(exp(x,(y/2)),(exp(x,(y/2))))

	  		else
	  			product(exp(x,y-1),x)
	  		end

	end
end
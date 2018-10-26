defmodule Test2 do

def fall(where) do
 elem(where,0)+elem(where,1)
end

def planets(planet,dis) when dis >= 0 do
	case planet do
		:earth -> :math.sqrt((dis*1.3)+2)
		:moon -> :math.sqrt(dis*2.3+4)
		:mars -> :math.sqrt(dis*5*5.25)
		:testyani -> n=5+4+2
					IO.write(n)
	end
end


def countdowner(namber) when namber > 0 do
	IO.inspect(namber)
	countdowner(namber-1)
end

def countdowner(namber) do
	if namber == 0 do
		IO.puts("!")
	else
		countdowner(namber)
	 end
  end

 def factorial(0) do
 	1
 end

 def factorial(1) do
 	1
 end

 def factorial(f) do
 	if f>1 do
 	IO.inspect(f*factorial(f-1))

 	else
 		factorial(f)

 end
end
end

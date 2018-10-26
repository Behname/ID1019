defmodule Lost do

	def nth(n,l) do

		if n==0 do
		 	[hd l]

		else
			nth(n-1,l -- [hd l])
		end
	  end
	end
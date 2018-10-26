defmodule Test123 do

	def sum(nil) do
		0
	end

	def sum(tree = {:node, value,left,right})do
		value + sum(left) + sum(right)
	end

	#def transf(x,y,l) do
	#	transf(x,y,l,[])
	#end

	#def transf(x,y,[],l2) do
	#	l2
	#end
	def transf(_,_,[]) do
		[]
	end

	def transf(x,y,[h|t]) do
		case x == h do
			true -> transf(x,y,t)
			false -> [(h*y)|transf(x,y,t)]
		end
	end

	def sum([h|t]) do
		sum([h|t],0)
	end

	def sum([],s) do
		s
	end

	def sum([h|t],s) do
		sum(t,h+s)
	end

	def min({:node,val,left,right}) do
		tree({:node,val,left,right},val)
	end


	def tree({:node,val,nil,nil},min) do
		case val <= min do
			true -> val
			false -> min
		end
	end

	def tree({:node,val,left,right},min) do
		case val <= min do
		true -> tree(left,tree(right,val))
		false -> tree(left,tree(right,min))
	end
   end

def sum(s) do
receive do
{:add, x} -> sum(s + x)
{:sub, x} -> sum(s - x)
{:mul, x} -> sum(s * x)
{:result, p} -> send(p, s)
end
end



end

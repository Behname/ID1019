defmodule Recursiontest do
def transf(x,y,l) do
		transf(x,y,l,[])
end

def transf(x,y,[],l2) do
	l2
end

def transf(x,y,[h|t],l2) do
	case x == h do
		true -> transf(x,y,t,l2)
		false -> transf(x,y,t,[(h*y)|l2])
end
end
def transf2(_,_,[]) do
	[]
end
def transf2(x,y,[x|t]) do transf2(x,y,t) end
def transf2(x,y,[h|t]) do [h*y|transf2(x,y,t)] end

def sum(l) do
	sum(l,0)
end

def sum([], c2) do
	c2
end

def sum([h|t],c2) do
	sum(t,c2+h)
end

def freq(key, freq) do
	freq(key,freq,[])
end

def freq(key,[],l1) do
	l1
end

def freq(key,[h|t],l1) do
	case elem(h,0) == key do
		true -> freq(key,t,[{elem(h,0), (elem(h,1)+1)}|l1])
		false -> freq(key,t,[h|l1])
	end
end

def once([h|t]) do
	{sumlist([h|t]),lengthlist([h|t])}
end
def sumlist([]) do
	0
end

def sumlist([h|t]) do
	h + sumlist(t)
end

def lengthlist([h|t]) do
	1 + lengthlist(t)
end

def lengthlist([]) do
	0
end

def tal(tal2) do
	tal(tal2,[])
end

def tal(0,l2) do
	l2
end

def tal(tal2,l2) do
	cond do
		tal2 >= 10 -> tal(tal2-10, ["X"|l2])
		tal2 >= 5 -> tal(tal2-5, ["V"|l2])
		tal2 >= 1 -> tal(tal2-1, ["I"|l2])
	end
end

def tal3([]) do
	0
end

def tal3(["X"|t]) do
	10 + tal3(t)
end

def tal3(["V"|t]) do
	5 + tal3(t)
end

def tal3(["I"|t]) do
	1 + tal3(t)
end

def tal4([]) do
	0
end

def tal4 (["I", "X"|t]) do
	9 + tal4(t)
end

def tal4 (["I", "V"|t]) do
	4 + tal4(t)
end

def tal4(["X"|t]) do
	10 + tal4(t)
end

def tal4(["V"|t]) do
	5 + tal4(t)
end

def tal4(["I"|t]) do
	1 + tal4(t)
end

def union(l1,l2) do
	union(l1,l2,[])
end
	
def union([],[],l3) do
	l3
end

def union([h|t],l2,l3) do
	case insertion(h,l3) do
		true -> union(t,l2,l3)
		false -> union(t,l2,[h|l3])
	end
end

def union([],[h2|t2],l3) do
	case insertion(h2,l3) do
		true -> union([],t2,l3)
		false -> union([],t2,[h2|l3])
	end
	
end

def insertion(element,[]) do
	false
end

def insertion(element,[h|t]) do
	case element == h do
		true -> true
		false -> insertion(element,t)
	end
end

def isec(l1,l2) do
	isec(l1,l2,[])
end

def isec([],l2,l3) do
	l3
end

def isec([h1|t],l2,l3) do
	case insertion(h1,l2) do
		true -> isec(t,l2,[h1|l3])
		false -> isec(t,l2,l3)
	end
   end

 def transf3(x,y,[]) do
 	[]
 end

 def transf3(h,y,[h|t]) do
 	transf(h,y,t)
 end

 def transf3(x,y,[h|t]) do
 	[h*y|transf(x,y,t)]
 end

end

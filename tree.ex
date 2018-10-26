defmodule Tree do
#def tree(sample) do
#	freq = freq(sample)
#	huffman(freq)
#end

#def freq(sample) do
	#freq(sample,)
	
#end

def count(_,[],c) do
	 c
end

def count(s1, s2, c) do
	if s1 == hd s2 do
		count(s1,(tl s2),(c+1))
	else
		count((s1),(tl s2),(c))
	end
end

def remove(s1,s2) do

  	  if s2 == [] do
   		[]

   	else
   		if [hd s2] == [s1] do
   			[] ++ remove(s1,tl s2)
   		else
   	 	[hd s2] ++ remove(s1,tl s2)
   	end
  end
 end

def freq([], freq) do
	freq
end

def freq([char | rest], freq) do
	freq((remove(char,[char | rest])),freq ++ [{char, (count(char, ([char | rest]), 0))}])
end
end
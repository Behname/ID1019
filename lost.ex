defmodule Lost do

	def nth(n,l) do

		if n==0 do
		 	hd l
		else
			nth(n-1,l -- [hd l])
		end
	  end

	def len(l) do
		lendor(0,l)
	end

	def lendor(n,l) do
		if l == [] do
			n
		else
			lendor(n+1,l -- [hd l])
		end
	end

	def sum(l) do

		sumination(len(l)-1,l,0)
	end


	def sumination(n,l,zum) do

	if n == -1 do
		zum
	else
	sumination(n-1,l,(zum+nth(n,l)))
  end
 end

 	def duplicate(l) do
 		duplicator(l,len(l)-1)
 	end

 	def duplicator(l,n) do
 		if n==-1 do
 			l
 	else
 		duplicator(l ++ [nth(n,l)],n-1)
 	end
  end

  def reverse(l) do

  duprev(duplicate(l),(len(duplicate(l)))/2)
  	
  end

  def duprev(l,n) do
  	if n == 0 do
  		l
  	else
  		duprev(l--[hd l],n-1)
  	end

  end

  def add(x,l) do
  	if (isthere(x,l,len(l)-1)) == 0 do
  		l ++ [x]
  	else
  		l
  end
 end

  def isthere(x,l,n) do
  	if nth(n,l) == x do
  		1
  	else
  		if n == 0 do
  			0
  		else
  			isthere(x,l,n-1)
  		 end
  	   end 
     end


  #def remove(x,l) do
  #	 if isrev(x,l,len(l)-1,0) == 0 do
  #	  l
  #    else
  #      remove(x,l -- x)
  #    end
  #  end

  # def isrev(x,l,n1,n2) do
  #	if nth(n1,l) == x do
  #		isrev(x,l,n1-1,n2+1)
  # 	  else
  # 	  	if n1 == 0 do
  # 	  		n2
  # 	  	  else 
  # 	  	  	isrev(x,l,n1-1,n2)
  # 	  end
  #  end

  def remove(x,l) do

  	  if l == [] do
   		[]

   	else
   		if [hd l] == [x] do
   			[] ++ remove(x,tl l)
   		else
   	 	[hd l] ++ remove(x,tl l)
   	end
  end
 end
'''
 def unique(l) do
 	_unique(l)
 end 
 defp _unique([]) do
 	[]
 end
 '''
   def unique ([]) do
 	[]

 end
 def unique([head|tail]) do
 	case head in tail do
 	true ->
 		 unique(tail)
 	false ->
 		 [head] ++ unique(tail)
 	end
  end

def splitteror([]) do
	[]
end

def splitteror([head|tail]) do

		Enum.sort([head|tail])

		#[[head]] ++ pack(tail)
	
	end

def packinpack ([]) do
	[]
end

def packinpack (l)do
	[pack((hd l), (l)) | packinpack(remove((hd l), l))]
	
end
def pack(_, []) do [] end
def pack(a,[head|tail]) do
	
	case a in [head|tail] do
		true ->
			[a] ++ pack(a, [head | tail] -- [a])
		false ->
			[]
end
end

def insert(element, list, list2) do
	if list == [] do
		list2 ++ list ++ [element]
			else
				if [hd list] > [element] do
					(list2 ++ [element | list])

						else
							insert((element), (tl list),(list2 ++ [hd list]))
			end
		  end
		end

def isort(l,l2) do
	if l == [] do
		l2 ++ l
	else

		 isort((tl l), (insert((hd l),l2,[])))
	end
end
   

def msort([]) do
	[]
end

def msort([b]) do
	[b]
end

def merge(l1, []) do l1 end

def merge([], l2) do l2 end

def msort(l) do
	{l1, l2} = msplit(l, [], [])
	merge(msort(l1), msort(l2))
end


def merge(l1, l2) do 
	if (hd l1) > (hd l2) do
	 [(hd l2) | merge(l1,(tl l2))]
	else
	[(hd l1) | merge((tl l1),l2)]
end
end



def msplit([], l1, l2) do
	{l1,l2}
end
def msplit([head|tail], l1, l2) do
	msplit(tail, l2, [head|l1])
end






def qsort([]) do [] end
  
def qsort([b]) do [b] end

def qsort([p | l]) do
{small, large} = qsplit(p, l, [], [])
small = qsort(small)
large = qsort(large)

append(small, [p | large])
end


def qsplit(_, [], small, large) do 
	{small,large}
end

def qsplit(p, [h | t], small, large) do
	if h<p do
		qsplit(p,t, [h|small], large)
	else
		qsplit(p, t, small, [h|large])
end
end
def append(l1,[]) do l1 end
def append([], l2) do l2 end

def append(l1,l2) do
	l1++l2
end
end

'
def append(l1, l2) do
	[l1|l2]

end

'
'


end


def pack([head|tail]) do

end


def splitteror 
	def random ([head|tail]) do
		[[head]] ++ [[tail]]
	end





if head == pack(tail) do
[head|tail] ++ head
else
[]
end
'


# def dunique(m,l) do
 	#if l == [] do
 	#	m
 	#else
 	#	if hd l == hd m do
 	#		[] ++ dunique(m,l)
 	#		else
 	#			hd m ++ hd l ++ dunique(tl m, tl l)
 	#  end
 	#end
#end	

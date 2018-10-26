defmodule Introduction do
	def adder2(n) do
		n + 2
	end

	def double(n) do
		n*2
	end

	def f2c(n) do
		((n-32)/(1.8))
	end

	def rarea(side1, side2) do
		side1*side2
	end

	def sarea(side) do
		rarea(side,side)
	end

	def carea(radius) do
		2*radius*3.14
	end

	def product(m,n) do
		if m == 0 do
		0	
	else
		n + product(m-1,n)
	end
   end

   def product_case(m,n) do
   	case m == 0 do
   		true -> 0
   		false -> n + product(m-1, n)
   	end
   end

   def product_cond(m, n) do
   	cond do
   		m == 0 -> 0
   		true -> n + product_cond(m-1, n)
   end
  end

  def product_clauses(0, _) do 0 end
  def product_clauses(m,n) do
  	n + product_clauses(m-1,n)
  end

  def exp(x,n) do
  	case n == 0 do
  		true -> 1
  		false -> product_clauses(x,exp(x,n-1))
  	end
  end

  def nth(n, [h|t]) do
  	case n == 1 do
  		true -> h
  		false -> nth(n-1,t)
  	end
  end

  def len(list) do
  	len(list,0)
  end

  def len([],n) do
  	n
  end

  def len([h|t],n) do
  	len(t,n+1)
  end

  def sum([h|t]) do
  	sum([h|t], 0)
  end

  def sum([], n) do
  	n
  end

  def sum([h|t],n) do
  	sum(t,h+n)
  end

  def duplicate([]) do
  	[]
  end

  def duplicate([h|t]) do	
  	[h,h|duplicate(t)]
  end

  def add(x,l1) do
  	add(x,l1,l1)
  end


  def add(x,l1,[]) do
  		[x|l1]
  end

  def add(x, l1, [h|t]) do
  	case x == h do
  		true-> l1
  		false -> add(x,l1,t)
  	end
  end

  def remove(x,l) do
  	remove(x,l,[])
  end

  def remove(x,[],l2) do
  	l2
  end

  def remove(x,[h|t],l2) do
  	case x == h do
  		true -> remove(x,t,l2)
  		false -> remove(x,t, [h|l2])
  	end
  end

  def unique(l) do
  	unique(l,[])
  end

  def unique([],l2) do
  	l2
  end

  def unique([h|t], l2) do
  	unique(remove(h,[h|t]),[h|l2])
  end

  def pack([]) do [] end

  def pack([h|t]) do

    tmp = pack([h|t],h,[])
    new_list = [h | t] -- tmp
    [tmp | pack(new_list)]
  end

  def pack([],x,l2) do
    l2
  end

  def pack([h|t],x,l2) do
    case x== h do
      true -> pack(t,x,[x|l2])
      false -> pack(t,x,l2)
    end
  end

  def reverse(l) do
    reverse(l,[],len(l))
  end

  def reverse([h|t],l2,0) do
    l2
  end

  def reverse([h|t],l2,count) do
    reverse([h|t],l2 ++ [nth(count,[h|t])],count-1)
  end

  def insert(element,list) do
    insert(element,list,[])
  end

  def insert(element,[],l2) do
    [element]
  end

  def insert(element, l1 = [h|t], l2) do
    cond do
      element > h -> l2 = [h|insert(element,t, l2)]
      element <= h -> l2 = [element|l1]
    end
  end

  def isort(l) do
    isort(l,[])
  end

  def isort(x,l2) do
    case x do
      [] -> l2

      [h | t] -> isort(t,insert(h,l2))

    end
  end

  def msort([l]) do
    [l]
  end

  def msort(l) do
    case l do
      [] -> []

      l ->
        {l2,l3} = msplit(l, [], [])
        merge(msort(l2), msort(l3))
    end
  end

  def merge([], l2) do l2 end
  def merge(l1, []) do l1 end

  def merge([h|t],[h2|t2]) do
    if h < h2 do
      [h|merge(t,[h2|t2])]
    else
      [h2|merge([h|t],t2)]
  end
end

  def msplit(l1,l2,l3) do
    case l1 do
      [] -> {l2,l3}

      [h|t] -> msplit(t,[h|l3],l2)
       end 
  end


  def qsort([]) do [] end
  def qsort([l]) do [l] end
  def qsort([p|l]) do
    {l1,l2} = qsplit(p,l,[],[])
    IO.inspect l1, label: "Small"
    small = qsort(l1)
    large = qsort(l2)
    IO.inspect small, label: "Small"
    IO.inspect large, label: "Large"

    
    
    append(small,[p|large])
  end

  def qsplit(_,[], small, large) do {small,large} end
  def qsplit(p, [h|t], small,large) do

    if h<p do
        qsplit(p,t,[h|small],large)
      else
        qsplit(p,t,small,[h|large])
    end
    
  end

  def append(l1,l2) do
    case l1 do
      [] -> l2

      [h|t] -> append(t,[h|l2])
    end
  end

  def to_interger(x) do to_interger(x,[]) end

  def to_interger([],[]) do
    0
  end

  def to_interger([], [h|t]) do 
    h + to_interger([], t)
   end

  def to_interger([x|r], n) do
    to_interger(r,(([x*:math.pow(2,(len([x|r])-1))|n]))) 
  end

  def fib(n) do
    case n== 0 do
      true -> 0
      false -> fib(n-1,1,0)
    end
  end

  def fib(0,n2,_) do
    n2
  end

  def fib(n1,n2,n3) do
    fib(n1-1,n2+n3,n3=n2)
  end

end
defmodule Huffman do
	def sample do
		'the quick brown fox jump over the lazy dog
		this is a sample text that we will use when we build 
		up a table we will oly handle lower case letters and 
		no punctutation symbols the frequency will of course
		not represent english but it is probably not that far off'
	end

	def text() do
		'this is something that we should encode'
	end

	def test do
		sample = sample()
		tree = tree(sample)
		#encode = encode_table(tree)
		decode = decode_table(tree)
		text = text()
		#seq = encode(text, encode)
		#decode(seq, decode)
	end

	def tree([h|t]) do
		tree(freq([h|t]),[])
	end

	def tree([h1,h2|t],[]) do
		#{:node,val,left,right}
		tree(isort([{:node,elem(h1,1)+elem(h2,1),0,h1,h2}|t]),[])
	end

	def tree([h],[]) do
		h
	end

	
	def freq([h|t]) do
		freq([h|t], [h|t], [], 0)
	end

	def freq([h|t],[h2|t2],l3,counter) do
		case h == h2 do
			true -> freq(t,[h2|t2],l3,counter+1)
			false -> freq(t,[h2|t2],l3,counter)
		end
	end

	def freq([],[h|t],l3,counter) do
		
		freq(remove([h|t],[h|t],[]),remove([h|t],[h|t],[]),[{h,counter}|l3],0)
	end

	def freq([],[],l3,counter) do
		isort(l3)
	end

	def remove([h|t], [h2|t2],l2) do
		case h == h2 do
			true -> remove([h|t],t2,l2)
			false -> remove([h|t],t2,[h2|l2])
		end
	end

	def remove(_, [], l2) do
		l2
	end

  	def insert(element,list) do
    insert(element,list,[])
  end

  def insert(element,[],l2) do
    [element]
  end

  def insert(element, l1 = [h|t], l2) do
    cond do
      elem(element,1) < elem(h,1) -> l2 = [h|insert(element,t, l2)]
      elem(element,1) >= elem(h,1) -> l2 = [element|l1]
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

	def encode_table(list,tree) do
		
		cond do
			elem(tree,0) != :node -> list
			elem(elem(tree,3),0) == :node -> encode_table([0|list],elem(tree,3))
			elem(elem(tree,3),0) != :node -> encode_table([0,elem(tree,3)|list],elem(tree,3))

			elem(elem(tree,4),0) == :node -> encode_table([1|list],elem(tree,4))
			elem(elem(tree,4),0) != :node -> encode_table([1,elem(tree,4)|list],elem(tree,4))


		end
	end

	def decode_table(tree) do
		
	end

	def encode(text, table) do
		
	end

	def decode(seq, tree) do
		
	end
end
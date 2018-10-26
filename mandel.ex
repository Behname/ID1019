defmodule Mandel do

  def rowW(width, height, trans, depth, list) do
    if(width != 0) do
    a = trans.(width,height)
    d = Brot.mandelbrot(a, depth)
    c = Colors.convert(d,depth)
    rowW(width-1,height, trans,depth, [c|list])
    else 
      list
    end
  end

  def rows(width,height,trans,depth,list) do
  	if(height != 0) do
  		newlist = rowW(width,height,trans,depth,[])
  		rows(width,height-1,trans,depth,[newlist|list])
  	else
  		
  		list
  	end
  end
 
def mandelbrot(width, height, x, y, k, depth) do
    trans = fn(w, h) ->
    Cmplx.new(x + k * (w - 1), y - k * (h - 1))
    end
      rows(width, height, trans, depth, [])
    end
end

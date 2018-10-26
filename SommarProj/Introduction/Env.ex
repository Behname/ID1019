defmodule Env do
	def new() do
		[]
	end

	def add(id, str, env) do
		[{id,str}|env]
	end

	def lookup(id, [h|t]) do
		case id == nil do
			true -> [h|t]
			false -> lookup(elem(h,0),t)
		end
	end

	def lookup(id, _) do
		[]
	end
end

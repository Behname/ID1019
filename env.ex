defmodule Env do
	def new() do
		[]
	end

	def add(id,str,env) do
		[{id,str}|env]

	end

	def lookup(id,env) do
		List.keyfind(env,id,0)
	end
 
 	def remove([],env) do
 		env
 	end


	def remove([id|ids],env) do
		case lookup(id,env) do
			{_,_} -> remove(ids,List.keydelete(env,id,0))

			nil -> remove(ids,env)
		end
	end


 	def remove(x,env), do: remove([x],env)
 		


end
'
	def remove(ids,env) do
		if List.keymember(env,ids,0) == true do
			remove(ids,env)
		else
			env
	end
 end

	def remove(ids,env) do
		remove(ids, List.keydelete(env, ids, 0))
	end




def eval_expr({:atm, id}, ...) do ... end

def eval_expr({:var, id}, env) do
	case ... do
		nil ->
		...
		{_, str} ->
		...
	end
 end

 def eval_expr({:cons, ..., ...}, ...) do
 	case eval_expr(..., ...) do
 		:error ->
 		...
 		{:ok, ...} ->
 			case eval_expr(..., ...) do
 				:error ->
 					...
 				{:ok, ts} ->
 				...
 			end
 		end
 	end
 end
end
end
end	
'

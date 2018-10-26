defmodule Philosopher do

	def sleep(t) do
		:timer.sleep(:rand.uniform(t))
	end
	
	def start(hgr,r,l,name, ctrl) do
		spawn_link(fn -> dreamliner(hgr,r,l,name,ctrl) end)
	end
	
	def dreamliner(0, _, _, name, _) do
		IO.puts("#{name} done eating")
		#:done
	end
	def dreamliner(hgr,r,l,name,ctrl) do
		'sleep(100)'
		:timer.sleep(200)
		reqeustor(hgr,r,l,name,ctrl)
	end

	def reqeustor(hgr,r,l,name,ctrl) do
			case Chopstick.request(l) do
				:ok -> 
					IO.puts("#{name} received the LEFT chopstick!") 
					case Chopstick.request(r) do 
						:ok -> 
							IO.puts("#{name} received the RIGHT chopstick!")
							returnor(hgr,r,l,name,ctrl)
			end
		end 	
	end

	def returnor(hgr,r,l,name,ctrl) do
		sleep(100)
		Chopstick.return(l)
		Chopstick.return(r) 
		IO.puts("#{name} returned the chopsticks")
		dreamliner(hgr-1,r,l,name,ctrl)
	end

end
		
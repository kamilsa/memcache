note
	description : "Memcache application root class"
	date        : "$Date$"
	revision    : "$Revision$"

class
	APPLICATION

inherit
	ARGUMENTS

create
	make

feature {NONE} -- Initialization
	cache:CACHE
	a:ARRAY[INTEGER]
	i:INTEGER
	e:ELEMENT
	listener:CACHE_LISTENER
	fif_strat:FIFO_STRATEGY_TEMP
	lif_strat:LIFO_STRATEGY_TEMP
	prior_fifo_strat:PRIORITY_FIFO_STRATEGY
	null_strat:NULL_STRATEGY
	strategy:STRATEGY
	cond:BOOLEAN
	exit:BOOLEAN
	key:STRING
	value:STRING
	priority:INTEGER
	capacity:INTEGER
	keep_time:INTEGER
	yes_no:STRING
	auto_delete:BOOLEAN
	make
			-- Run application
		do
			--| Add your code heres
			io.put_string("hello")
			create listener
			create a.make_filled (0, 1, 10)
			create fif_strat.make
			create lif_strat.make
			create prior_fifo_strat.make
			create null_strat.make
			strategy := null_strat
			create cache.make (10000, 10, TRUE, strategy)
			key := "not_key"
			value := "not_value"
			priority := -1
			auto_delete := False
			yes_no := ""
			create e.make (key, value, -1)
			from
			until
				exit
			loop
				io.put_string ("Choose the action:%N")
				io.put_string ("1 - Create new cache%N")
				io.put_string ("2 - Add new element to cache%N")
				io.put_string ("3 - Show cache's content")
				io.read_line
				if io.last_string ~ "q" then
					exit := True
					print ("Mooooo!%N")
				elseif io.last_string ~ "1" then
					io.put_string ("Choose strategy:%N")
					io.put_string ("1 - Fifo strategy%N")
					io.put_string ("2 - Lifo strategy%N")
					io.put_string ("3 - Priority fifo strategy%N")
					io.put_string ("4 - Exit")
					io.read_line
					if io.last_string ~ "1" then
						strategy := fif_strat
					elseif io.last_string ~ "2" then
						strategy := lif_strat
					elseif io.last_string ~ "3" then
						strategy := prior_fifo_strat
					end
					io.put_string ("Enter the capacity:%N")
					io.read_integer
					capacity := io.last_integer
					io.put_string ("Enter the keep time:%N")
					io.read_integer
					keep_time := io.last_integer
					io.put_string ("Enter whether cache able to do auto delete (yes/no):%N")
					io.read_line
					yes_no := io.last_string
					if yes_no ~ "yes" then
						auto_delete := True
					elseif yes_no ~ "no" then
						auto_delete := False
					end
					create cache.make (capacity, keep_time, auto_delete, strategy)

				elseif io.last_string ~ "2" then
					print(cache.get_strategy.type)
					io.put_string ("Enter the key: ")
					io.read_line
					key := io.last_string
					io.put_string ("Enter the value: ")
					io.read_line
					value := io.last_string
					io.put_string ("Enter the priority: ")
					io.read_integer
					priority := io.last_integer
					cache.put (key, value, priority)
				elseif io.last_string ~ "3" then
					cache.show
				end
					io.new_line
			end
		end
end

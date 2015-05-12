note
	description: "Summary description for {CACHE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CACHE
create
	make
feature{STRATEGY} --fields
keep_time:DOUBLE
auto_delete:BOOLEAN
strategy:STRATEGY
elements_hash:ARRAY[ELEMENT]
elements_strat:ARRAY[ELEMENT]
capacity:INTEGER

feature -- initialization
	make(a_capacity:INTEGER;a_keep_time:DOUBLE; an_auto_delete:BOOLEAN; a_strategy:STRATEGY)
	local
		e:ELEMENT
	do
		capacity := a_capacity
		keep_time := a_keep_time
		auto_delete := an_auto_delete
		strategy := a_strategy
		create e.make ("temp", "temp", 0)
		create elements_hash.make_filled (e, 1, capacity)
		create elements_strat.make_filled(e, 1, capacity)
	ensure
		capacity_assign: capacity = a_capacity
		keep_time_assign: keep_time = a_keep_time
		auto_delete_assign: auto_delete = an_auto_delete
		a_strategy_assign: strategy = a_strategy
	end

feature --putting
	put(a_key:STRING;a_value:STRING; a_priority:INTEGER)
	local
		e:ELEMENT
		hash_value:INTEGER
	do
		hash_value := hash_code(a_key)
		create e.make (a_key, a_value, a_priority)
		elements_hash.put (e, hash_value)
		strategy.execute_put (e, elements_strat)
	ensure
		is_not_empty: is_empty /= true
	end
feature -- gettting
	get_with_key(key:STRING):STRING
	local
		hash_value:INTEGER
	do
		hash_value := hash_code(key)
		Result := elements_hash.at (hash_value).get_value
	end

	get_with_strategy:STRING
	do
		Result := strategy.execute_get (elements_strat).get_value
	end
feature --hash
	hash_code(value:STRING): INTEGER
      local
         i: INTEGER
         count :INTEGER
      do
      	count := value.count
         from
            i := count
         until
            i = 0
         loop
            Result := Result + value.at(i).code
            i := i - 1
         end
         Result := Result \\ capacity
      end
feature --contains

	contains(value:STRING):BOOLEAN
	require
		is_not_empty_condition: is_empty /= true
	local
		i:INTEGER
	do
		Result := False
		from
			i := 0
		until
			i > capacity
		loop
			if (elements_hash.at(i).get_value = value) then Result := True
			i := capacity + 1
			end
		end
	end
feature --check whether storage empty
	is_empty:BOOLEAN
	do
		Result := strategy.check_is_empty (elements_strat)
	end

feature --show content of the cache
	show
	do
		io.put_string ("executin show in fifo%N")
		strategy.execute_show (elements_strat)
	end
feature -- getters
	get_strategy:STRATEGY
	do
		Result := strategy
	end
end

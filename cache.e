note
	description: "Summary description for {CACHE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CACHE
create
	make
feature --fields
keep_time:DOUBLE
auto_delete:BOOLEAN
strategy:STRATEGY
elements:ARRAY[INTEGER]
capacity:INTEGER

feature -- initialization
	make(a_keep_time:DOUBLE; an_auto_delete:BOOLEAN; a_strategy:STRATEGY)
	do
		--implementation
	end
	ensure
		keep_time_assign: keep_time = a_keep_time
		auto_delete_assign: auto_delte = an_auto_delete
		a_strategy_assign: strategy = a_strategy

feature --putting
	put(value:INTEGER)
	do
		--implementation
	end
	ensure
		is_not_empty: is_empty /= true
feature -- gettting
	get(key:STRING):STRING
	do
		--implementation
		result := "result"
	end
feature --hash
	hash_function(value:STRING):STRING
	do
		--implementation
		result := "result"
	end
feature --contains
	require
		is_not_empty_condition: is_empty /= true

	contains(value:STRING):BOOLEAN
	do
		--implementation
	end
feature --check whether storage is empty
	is_empty:BOOLEAN
	do
		--implementations
	end
end

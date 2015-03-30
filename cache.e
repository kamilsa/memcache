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
		keep_time := a_keep_time
		auto_delete := an_auto_delete
		strategy := a_strategy
		elements := array[10]
	end
feature -- putting
	put(value:INTEGER)
	do
		--implementation
	end
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
feature -- contains
	contains(value:STRING):BOOLEAN
	do
		--implementation
	end
end

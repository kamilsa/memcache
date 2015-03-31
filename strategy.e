note
	description: "Summary description for {STRATEGY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	STRATEGY
create
	make
feature -- initialization
	make
	do
		--do nothing
	end
feature --put executing
	deferred
	execute_put(element:ELEMENT; where:ARRAY[INTEGER])
feature --get executing
	deferred
	execute_get(key:STRING):STRING
feature --remove executing
	deferred
	execute_remove is
end

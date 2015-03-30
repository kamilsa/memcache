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
	execute_put(element:ELEMENT; where:ARRAY[INTEGER])
	deferred
feature --get executing
	execute_get(key:STRING):STRING
	deferred
feature --remove executing
	execute_remove is
	deferred
end

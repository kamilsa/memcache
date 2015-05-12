note
	description: "Summary description for {STRATEGY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	STRATEGY
feature --put executing
	execute_put(element:ELEMENT; where:ARRAY[ELEMENT])
	deferred
	end
feature --get executing
	execute_get(where:ARRAY[ELEMENT]):ELEMENT
	deferred
	end
feature --remove executing
	execute_remove(where:ARRAY[ELEMENT])
	deferred
	end
feature --is empty checking
	check_is_empty(where:ARRAY[ELEMENT]):BOOLEAN
	deferred
	end
feature -- check whether given element exists in collection
	check_contains(element:ELEMENT; where:ARRAY[ELEMENT]):BOOLEAN
	deferred
	end
feature -- execute show
	execute_show(where:ARRAY[ELEMENT])
	deferred
	end
feature -- type
	type:STRING
	deferred
	end
end

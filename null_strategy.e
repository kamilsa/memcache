note
	description: "Summary description for {NULL_STRATEGY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	NULL_STRATEGY
inherit
	STRATEGY
redefine
	execute_put,
	execute_get,
	execute_remove,
	check_is_empty,
	check_contains
end

create
	make
feature -- fields
feature -- initialization
	make
	do
	end
feature -- execute put implementation
	execute_put(element:ELEMENT; where:ARRAY[ELEMENT])
	do
	end
feature -- execute get implementation
	execute_get(where:ARRAY[ELEMENT]):ELEMENT
	local
		element:ELEMENT
	do
		create element.make ("not_key", "not_value", -1)
		Result := element
	end
feature -- execute remove implementation
	execute_remove(where:ARRAY[ELEMENT])
	do
	end
feature -- check is empty
	check_is_empty(where:ARRAY[ELEMENT]):BOOLEAN
	do
	end
feature -- check contains
	check_contains(element:ELEMENT; where:ARRAY[ELEMENT]):BOOLEAN
	local
		e:ELEMENT
		i:INTEGER
	do
	end
feature -- show content
	execute_show(where:ARRAY[ELEMENT])
	local
		i:INTEGER
	do
	end
feature -- get type
	type:STRING
	do
		Result := "NULL"
	end
end

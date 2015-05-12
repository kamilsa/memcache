note
	description: "Summary description for {FIFO_STRATEGY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	LIFO_STRATEGY_TEMP
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
	top:INTEGER
feature -- initialization
	make
	do
		top := 0
	end
feature -- execute put implementation
	execute_put(element:ELEMENT; where:ARRAY[ELEMENT])
	do
		top := top + 1
		where.put (element, top)
	end
feature -- execute get implementation
	execute_get(where:ARRAY[ELEMENT]):ELEMENT
	do
		Result := where.at (top)
	end
feature -- execute remove implementation
	execute_remove(where:ARRAY[ELEMENT])
	do
		top := top - 1
	end
feature -- check is empty
	check_is_empty(where:ARRAY[ELEMENT]):BOOLEAN
	do
		if top = 0 then
			Result := True
		else
			Result := False
		end
	end
feature -- check contains
	check_contains(element:ELEMENT; where:ARRAY[ELEMENT]):BOOLEAN
	local
		e:ELEMENT
		i:INTEGER
	do
		Result := False
		from i := top
		until i /= 0
		loop
			e := where.at(i)
			if e.get_key = element.get_key then
				Result := False
			end
		end
		i := i - 1
	end
feature -- show content
	execute_show(where:ARRAY[ELEMENT])
	local
		i:INTEGER
	do
		print(where.capacity)
		from
			i := 1
		until
			i > top
		loop
			io.put_string (where.at (i).get_value)
			i := i + 1
		end
	end
feature -- get type
	type:STRING
	do
		Result := "LIFO"
	end
end

note
	description: "Summary description for {FIFO_STRATEGY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	FIFO_STRATEGY_TEMP
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
	head:INTEGER
	tail:INTEGER
	number:INTEGER -- number of elements in queue
feature -- initialization
	make
	do
		head := 1
		tail := 1
	end
feature -- execute put implementation
	execute_put(element:ELEMENT; where:ARRAY[ELEMENT])
	do
		where.at(tail) := element
		if (tail = where.capacity) then
			tail := 1
		else
			tail := tail + 1
		end
		number := number + 1
	end
feature -- execute get implementation
	execute_get(where:ARRAY[ELEMENT]):ELEMENT
	do
		Result := where.at(head)
		if (head = where.capacity) then
			head := 1
		else
			head := head + 1
		end
		number := number - 1
	end
feature -- execute remove implementation
	execute_remove(where:ARRAY[ELEMENT])
	do
		if (head = where.capacity) then
			head := 1
		else
			head := head + 1
		end
		number := number - 1
	end
feature -- check is empty
	check_is_empty(where:ARRAY[ELEMENT]):BOOLEAN
	do
		if head = tail then
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
		from i := where.capacity
		until i /= 0
		loop
			e := where.at(i)
			if e.get_key = element.get_key then
				Result := False
			end
			i := i - 1
		end
	end
feature -- show content
	execute_show(where:ARRAY[ELEMENT])
	local
		i:INTEGER
		count:INTEGER
	do
		from i := 1
		until i > where.capacity
		loop
			print("i = ")
			print(i)
			print(" ")
			print(where.at (i).get_value)
			print("%N")
			i := i + 1
		end
		from
			i := head
			count := 1
		until
			count > number
		loop
			print (where.at (i).get_value)
			i := i + 1
			if (i = where.capacity + 1) then
				i := 1
			end
			count := count + 1
		end
	end
feature -- get type
	type:STRING
	do
		Result := "FIFO"
	end
end

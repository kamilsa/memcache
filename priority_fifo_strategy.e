note
	description: "Summary description for {FIFO_STRATEGY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	PRIORITY_FIFO_STRATEGY
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
	local
		flag:BOOLEAN
		i:INTEGER
		j:INTEGER
	do
		where.at(tail) := element
		if (tail = where.capacity) then
			tail := 1
		else
			tail := tail + 1
		end
		number := number + 1
		if (number /= 1) then
			i := tail
			from
				flag := true
			until
				flag /= true
			loop
				if (i = 1) then
					j := where.capacity
				else
					j := i - 1
				end
				if (where.at (i).get_priority > where.at (j).get_priority) then
					swap(where, i, j)
				else
					flag := false
				end
				i := i - 1
			end
		end
	end

	swap(where:ARRAY[ELEMENT];i:INTEGER;j:INTEGER)
	local
		temp:ELEMENT
	do
		temp := where.at(i)
		where.put (where.at (j), i)
		where.put (temp, j)
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
		print("number: ")
		print(number)
		print("%N")
		from
			i := head
			count := 1
		until
			count > number
		loop
			print (where.at (i).get_value)
			print (" ")
			i := i + 1
			if (i = where.capacity) then
				i := 1
			end
			count := count + 1
		end
	end
feature -- get type
	type:STRING
	do
		Result := "PRIORITY_FIFO"
	end
end

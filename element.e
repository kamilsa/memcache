note
	description: "Summary description for {ELEMENT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ELEMENT
create
	make
feature{NONE} --initialization
	key:STRING
	value:STRING
	priority:INTEGER

	make(a_key:STRING; a_value:STRING; a_priority:INTEGER)
	do
		key := a_key
		value := a_value
		priority := a_priority
	ensure
		key_assigned: key = a_key
		value_assigned: value = a_value
		priority_assigned: priority = a_priority
	end

feature -- getters
	get_key:STRING
	do
		Result := key
	end
	get_value:STRING
	do
		Result := value
	end
	get_priority:INTEGER
	do
		Result := priority
	end
end

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
	creation_date:DATE

feature -- getters
	get_key:STRING
	do
		-- implementation
	end
	
	get_value:STRING
	do
		-- implementation
	end

	get_creation_date:DATE
	do
		-- implementation
	end
end

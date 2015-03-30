note
	description : "Memcache application root class"
	date        : "$Date$"
	revision    : "$Revision$"

class
	APPLICATION

inherit
	ARGUMENTS

create
	make

feature {NONE} -- Initialization
	cache:CACHE
	strategy:STRATEGY
	make
			-- Run application.
		do
			--| Add your code here
		end
end

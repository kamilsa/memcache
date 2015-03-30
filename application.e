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
			print ("Hello Ei1ffesl Worl2d!%N")
			create STRATEGY.make
			create cache.make(1000, false,strategy)
		end
end

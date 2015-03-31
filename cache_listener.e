note
	description: "Summary description for {CACHE_LISTENER}. Listen to cache and do removing if necessary"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CACHE_LISTENER
inherit
	THREAD

feature -- fields
cache:CACHE
feature --inherited method, launches thread and do removing if necessary
	execute
	do
		--implementation
	end

feature -- seitting cache to work
	set_cache(a_cache:CACHE)
	do
		--implementation
	end
	ensure
		cache = a_cache
end

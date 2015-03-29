note
	description: "Summary description for {CACHE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CACHE
create
	make
feature{NONE}--fields

keep_time:DOUBLE
auto_delete:BOOLEAN
strategy:STRATEGY

--feature -- initialization
	--make(a_key:STRING; a_value:STRING; a_keep_time:DOUBLE; an_auto_delete:BOOLEAN; a_strategy:STRATEGY)
	--require

end

pharo - updates
update20361
	"self new update20361"
	self withUpdateLog: 'Issue 6863:	Use named accessors for Exception handling code
	http://code.google.com/p/pharo/issues/detail?id=6863
	
Issue 6866:	AuthorName Settings are broken
		http://code.google.com/p/pharo/issues/detail?id=6866
		
Issue 6867:	Improve TestRunner CLI Class Comment / Help text
		http://code.google.com/p/pharo/issues/detail?id=6867'.
	self loadTogether: self script343 merge: false.
	self flushCaches.

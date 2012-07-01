pharo - updates
update20055
	"self new update20055"
	self withUpdateLog: 'Issue 5817:	privShrinkingProcess with new KMPragmaKeymapBuilder
	http://code.google.com/p/pharo/issues/detail?id=5817
	
Issue 5815:	Break dependency between traits and ring
	http://code.google.com/p/pharo/issues/detail?id=5815'.
	self loadTogether: self script45 merge: false.
	self flushCaches.

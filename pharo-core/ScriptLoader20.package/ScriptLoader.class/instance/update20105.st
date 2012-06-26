pharo - updates
update20105
	"self new update20105"
	self withUpdateLog: ' Issue 6011:	avoiding MCWorkingCopy allManagers expressions
		http://code.google.com/p/pharo/issues/detail?id=6011
	'.
	self loadTogether: self script95 merge: false.
	self flushCaches.

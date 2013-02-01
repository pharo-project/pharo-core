pharo - updates
update20457
	"self new update20457"
	self withUpdateLog: 'Issue 7181:	LayoutFrame refactoring part 4: cleaning spec
	http://code.google.com/p/pharo/issues/detail?id=7181
	
This is the fourth part of the cleaning of fractions:offsets: protocol
Mainly touching spec and speclayout this time. Cleaning and improving layoutFrame to fully take advantage of the new initialization of instance variables.'.
	self loadTogether: self script435 merge: false.
	self flushCaches.

pharo - updates
update20448
	"self new update20448"
	self withUpdateLog: 'Issue 6913:	Remove method in a MessageBrowser causes OutOfBounds error
	http://code.google.com/p/pharo/issues/detail?id=6913
	
Issue 6014:	MethodNode asString (printString) crash
	http://code.google.com/p/pharo/issues/detail?id=6014
	
Issue 6173:	Nautilus - adding a class category / package doesn not update other browsers
	http://code.google.com/p/pharo/issues/detail?id=6173'.
	self loadTogether: self script427 merge: false.
	self flushCaches.

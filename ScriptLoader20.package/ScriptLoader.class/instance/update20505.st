pharo - updates
update20505
	"self new update20505"
	ClassHierarchyTest fixSubclasses.
	self withUpdateLog: 'Issue 7372:	Deadcode
	http://code.google.com/p/pharo/issues/detail?id=7372
	
Issue 7352:	Changing a superclass removes the Class from the superclass subclasses
	http://code.google.com/p/pharo/issues/detail?id=7352'.
	self loadTogether: self script483 merge: false.
	self flushCaches.

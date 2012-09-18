pharo - updates
update20285
	"self new update20285"
	self withUpdateLog: 'Issue 6659:	Nautilus duplicates window announcements
	http://code.google.com/p/pharo/issues/detail?id=6659
	
Issue 6621:	some fixes to Nautilus protocols use
	http://code.google.com/p/pharo/issues/detail?id=6621
	
Issue 1717:	Object and Class should have simple testing methods for trait use
	http://code.google.com/p/pharo/issues/detail?id=1717
	
Issue 6664:	Speed up CompiledMethod >> #isOverriden
	http://code.google.com/p/pharo/issues/detail?id=6664'.
	self loadTogether: self script272 merge: false.
	self flushCaches.

pharo - updates
update20031
	"self new update20031"
	self withUpdateLog: 'Issue 5679:	Removing a trait does not remove trait methods from class
	http://code.google.com/p/pharo/issues/detail?id=5679
	
Issue 5737:	cleanup #useClosureBytecodes
	http://code.google.com/p/pharo/issues/detail?id=5737
	
Issue 5752:	Update Keymapping
	http://code.google.com/p/pharo/issues/detail?id=5752'.
	self loadTogether: self script25 merge: false.
	KMRepository reset.
	self flushCaches.

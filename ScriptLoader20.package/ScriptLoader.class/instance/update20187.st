pharo - updates
update20187
	"self new update20187"
		Smalltalk fixObsoleteReferences.
	self withUpdateLog: 'IIssue 6216:	Failing test: DateTest.testAsSeconds
	http://code.google.com/p/pharo/issues/detail?id=6216
	
Issue 5629:	Enh: GroupWindowMorph
	http://code.google.com/p/pharo/issues/detail?id=5629'.
	self loadTogether: self script177 merge: false.
	self flushCaches.

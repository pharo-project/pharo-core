pharo - updates
update20045
	"self new update20045"
	self withUpdateLog: 'Issue 5801:	remove #testLiteralsForGlobalBehaviorsAreCorrect
	http://code.google.com/p/pharo/issues/detail?id=5801
	
Issue 5758:	Improve CommandLine handling
	http://code.google.com/p/pharo/issues/detail?id=5758'.
	self loadTogether: self script37 merge: false.
	self flushCaches.

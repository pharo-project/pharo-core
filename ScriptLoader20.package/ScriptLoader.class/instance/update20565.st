pharo - updates
update20565
	"self new update20565"
	self withUpdateLog: 'Issue 7577:	Fix SmalltalkImage >> #howToGetClassesNotRegisteredInStartups
	http://code.google.com/p/pharo/issues/detail?id=7577
	
Issue 7576:	CodeCritics does not sort the results
	http://code.google.com/p/pharo/issues/detail?id=7576
	
Issue 7572:	Navigating on an empty method list causes problems in TransformMorph
	http://code.google.com/p/pharo/issues/detail?id=7572'.
	self loadTogether: self script540 merge: false.
	self flushCaches.

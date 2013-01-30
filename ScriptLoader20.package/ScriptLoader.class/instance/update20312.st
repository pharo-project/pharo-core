pharo - updates
update20312
	"self new update20312"
	self withUpdateLog: 'Issue 6732:	Failing test: OpenToolTest
	http://code.google.com/p/pharo/issues/detail?id=6732
	
Issue 6681:	Failing test: GoferApiTest>>#testRepositoryErrors
	http://code.google.com/p/pharo/issues/detail?id=6681
	
Issue 6742:	Search Dialog not accepting input
	http://code.google.com/p/pharo/issues/detail?id=6742
	
Issue 6741:	Replace the whole HttpUrl downloading protocol
	http://code.google.com/p/pharo/issues/detail?id=6741'.
	self loadTogether: self script297 merge: false.
	self flushCaches.

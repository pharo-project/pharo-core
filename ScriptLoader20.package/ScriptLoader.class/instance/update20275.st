pharo - updates
update20275
	"self new update20275"
	self withUpdateLog: 'Issue 6635:	Removing class does not remove class tag
	http://code.google.com/p/pharo/issues/detail?id=6635
	
Issue 6636:	Review over RPackage system integration tests
	http://code.google.com/p/pharo/issues/detail?id=6636
	
Issue 6461:	[BUG]: Bogus package creation
	http://code.google.com/p/pharo/issues/detail?id=6461'.
	self loadTogether: self script262 merge: false.
	self flushCaches.

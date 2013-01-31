pharo - updates
update20356
	"self new update20356"
	self withUpdateLog: 'Issue 6837:	Failing test: Undeclared in MetacelloPlatform>>createRepository:
	http://code.google.com/p/pharo/issues/detail?id=6837
	
Issue 6775:	String null and Character null are missing
	http://code.google.com/p/pharo/issues/detail?id=6775
	
Issue 6816:	Autocompletion window stays open
	http://code.google.com/p/pharo/issues/detail?id=6816
	
Issue 5272:	Debugger displays Block in class)
	http://code.google.com/p/pharo/issues/detail?id=5272'.
	self loadTogether: self script338 merge: false.
	self flushCaches.

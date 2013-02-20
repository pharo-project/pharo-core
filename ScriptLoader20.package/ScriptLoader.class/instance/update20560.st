pharo - updates
update20560
	"self new update20560"
	self withUpdateLog: 'Issue 7535:	[SPEC] ClassMethodBrowser double initialization
	http://code.google.com/p/pharo/issues/detail?id=7535
	
Issue 7546:	add failing windows NB tests as windows-only known failures
	http://code.google.com/p/pharo/issues/detail?id=7546
'.
	self loadTogether: self script535 merge: false.
	self flushCaches.

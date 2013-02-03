pharo - updates
update20469
	"self new update20469"
	self withUpdateLog: 'Issue 7224:	Failing test related to RB
	http://code.google.com/p/pharo/issues/detail?id=7224
	
Issue 6957:	ConfiugrationCommandLineHandler tries to open file on --help in non-headless mode
	http://code.google.com/p/pharo/issues/detail?id=6957'.
	self loadTogether: self script447 merge: false.
	self flushCaches.

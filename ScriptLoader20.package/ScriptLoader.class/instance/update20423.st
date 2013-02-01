pharo - updates
update20423
	"self new update20423"
	self withUpdateLog: 'Issue 7072:	Better pop up menu entries aligned with
	http://code.google.com/p/pharo/issues/detail?id=7072
	
Issue 7071:	Fixing ManifestBrowser
	http://code.google.com/p/pharo/issues/detail?id=707'.
	self loadTogether: self script402 merge: false.
	self flushCaches.

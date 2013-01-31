pharo - updates
update20363
	"self new update20363"
	self withUpdateLog: 'Issue 5678:	TextMorph font is wrong
 	http://code.google.com/p/pharo/issues/detail?id=5678

Issue 6236:	Streaming on stdout does not work
	http://code.google.com/p/pharo/issues/detail?id=6236

Issue 6870:	Nautilus sort accidentally the inst vars	
	http://code.google.com/p/pharo/issues/detail?id=6870
	

'.
	self loadTogether: self script345 merge: false.
	self flushCaches.

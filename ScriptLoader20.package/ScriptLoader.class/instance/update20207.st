pharo - updates
update20207
	"self new update20207"
	self withUpdateLog: 'Issue 5935:	String #asFile and #asDirectory
	http://code.google.com/p/pharo/issues/detail?id=5935'.
	self loadTogether: self script197 merge: false.
	self flushCaches.

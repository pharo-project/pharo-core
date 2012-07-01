pharo - updates
update20121
	"self new update20121"
	self withUpdateLog: '
- Issue 5873:	[BUG]: ZipArchive does not correctly zip hierarchies. Thanks Sean de Nigris.
	http://code.google.com/p/pharo/issues/detail?id=5873'.
	self loadTogether: self script111 merge: false.
	self flushCaches.

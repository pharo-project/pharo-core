pharo - updates
update20462
	"self new update20462"
	self withUpdateLog: '- Issue 7192:	JobEnd Bug. Now no more DNU :)
	http://code.google.com/p/pharo/issues/detail?id=7192

- Issue 7191:	MC merge generate conflicts for categories
	http://code.google.com/p/pharo/issues/detail?id=7191'.
	self loadTogether: self script440 merge: false.
	self flushCaches.

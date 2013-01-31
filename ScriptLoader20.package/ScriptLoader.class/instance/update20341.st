pharo - updates
update20341
	"self new update20341"
	self withUpdateLog: 'Issue 6804:	JobProgressMorph has two undeclared iVars
	http://code.google.com/p/pharo/issues/detail?id=6804'.
	self loadTogether: self script323 merge: false.
	self flushCaches.

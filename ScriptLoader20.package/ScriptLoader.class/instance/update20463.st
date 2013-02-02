pharo - updates
update20463
	"self new update20463"
	self withUpdateLog: '- Issue 7190:	MC core model depends on UI !!
	http://code.google.com/p/pharo/issues/detail?id=7190
	
- Issue 7195:	SmallLint Rules better description and cleaning
	http://code.google.com/p/pharo/issues/detail?id=7195'.
	self loadTogether: self script441 merge: false.
	self flushCaches.

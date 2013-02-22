pharo - updates
update20563
	"self new update20563"
	self withUpdateLog: 'Issue 7547:	Cannot select entry in Changes browser when clicking on the entry label
	http://code.google.com/p/pharo/issues/detail?id=7547'.
	self loadTogether: self script538 merge: false.
	self flushCaches.

pharo - updates
update20264
	"self new update20264"
	self withUpdateLog: 'Issue 6592:	Fix RecentMessageList>>aClassHasBeenCommented:
		http://code.google.com/p/pharo/issues/detail?id=6592&'.
	self loadTogether: self script251 merge: false.
	self flushCaches.

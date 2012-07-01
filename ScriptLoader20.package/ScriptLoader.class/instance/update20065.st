pharo - updates
update20065
	"self new update20065"
	self withUpdateLog: 'Issue 5821:	FlatMessageListBrowser broken with class comments
		http://code.google.com/p/pharo/issues/detail?id=5821'.
	self loadTogether: self script55 merge: false.
	self flushCaches.

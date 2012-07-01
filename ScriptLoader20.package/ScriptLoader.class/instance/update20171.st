pharo - updates
update20171
	"self new update20171"
	self withUpdateLog: 'Issue 6199:	ListDialogWindow
	http://code.google.com/p/pharo/issues/detail?id=6199
	
Issue 6198:	Extension missing
	http://code.google.com/p/pharo/issues/detail?id=6198
	
Issue 6117:	SimplifiedChineseEnvironment should implement leadingChar
	http://code.google.com/p/pharo/issues/detail?id=6117'.
	self loadTogether: self script161 merge: false.
	self flushCaches.

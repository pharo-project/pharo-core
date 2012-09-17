pharo - updates
update20263
	"self new update20263"
	self withUpdateLog: 'Issue 6590:	When running on server tests: MessageNotUnderstood: MethodAdded>>newMethod
	http://code.google.com/p/pharo/issues/detail?id=6590'.
	self loadTogether: self script250 merge: false.
	self flushCaches.

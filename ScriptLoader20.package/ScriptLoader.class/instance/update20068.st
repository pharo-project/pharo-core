pharo - updates
update20068
	"self new update20068"
	Smalltalk tools register: MessageBrowser as: #messageList.
HashedCollection allSubclassesDo: #rehashAll.
	self withUpdateLog: 'Issue 5832:	FlatMessageListBrowser can be removed
	http://code.google.com/p/pharo/issues/detail?id=5832

Issue 5862:	rehash all	
	http://code.google.com/p/pharo/issues/detail?id=5862'.
	self loadTogether: self script58 merge: false.
	self flushCaches.

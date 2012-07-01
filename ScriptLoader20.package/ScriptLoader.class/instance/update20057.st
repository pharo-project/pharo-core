pharo - updates
update20057
	"self new update20057"
	self withUpdateLog: 'Issue 5824:	Issue in list initialization if you do not use getList: but getListElement: instead
	http://code.google.com/p/pharo/issues/detail?id=5824
	
Issue 5825:	New MessageBrowser
	http://code.google.com/p/pharo/issues/detail?id=5825
	
Issue 4575:	ProtocolBrowser should be deprecated
	http://code.google.com/p/pharo/issues/detail?id=4575'.
	self loadTogether: self script47 merge: false.
	Smalltalk tools register: MessageBrowser as: #messageList.
	self flushCaches.

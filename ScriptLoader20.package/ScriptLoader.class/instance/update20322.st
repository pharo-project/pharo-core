pharo - updates
update20322
	"self new update20322"
	self withUpdateLog: 'Issue 6764:	Fuel out Error / StackTrace	
	http://code.google.com/p/pharo/issues/detail?id=6764
	
Issue 6717:	Workspace Menus Broken
	http://code.google.com/p/pharo/issues/detail?id=6717'.
	self loadTogether: self script307 merge: false.
	self flushCaches.

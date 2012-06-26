pharo - updates
update20061
	"self new update20061"
	self withUpdateLog: 'Issue 5848:	Updating broken because DNU #removeHTTPRepositoryLocationNamed:
	http://code.google.com/p/pharo/issues/detail?id=5848
	
Issue 5844:	newSpecialArray fixes
	http://code.google.com/p/pharo/issues/detail?id=5844
	
Issue 5843:	Nautilus DNU on context menu on Class
	http://code.google.com/p/pharo/issues/detail?id=5843
	
Issue 5842:	remove browse it here
	http://code.google.com/p/pharo/issues/detail?id=5842
	
Issue 5841:	referredInstVars
	http://code.google.com/p/pharo/issues/detail?id=5841
	
Issue 3639:	Remove ServerDirectory
	http://code.google.com/p/pharo/issues/detail?id=3639'.
	self loadTogether: self script51 merge: false.
	self flushCaches.

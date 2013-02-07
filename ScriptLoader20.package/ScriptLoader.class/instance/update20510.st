pharo - updates
update20510
	"self new update20510"
	self withUpdateLog: 'Issue 7412:	change testInstalledMethodsWithIncorrectTrailerKind to make the fuel-out usable
	http://code.google.com/p/pharo/issues/detail?id=7412
	
Issue 7373:	Add Automatic MethodClassifier
	http://code.google.com/p/pharo/issues/detail?id=7373'.
	self loadTogether: self script488 merge: false.
	self flushCaches.

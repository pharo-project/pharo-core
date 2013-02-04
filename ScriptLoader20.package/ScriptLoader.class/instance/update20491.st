pharo - updates
update20491
	"self new update20491"
	self withUpdateLog: 'Issue 7327:	RBParser should raise SyntaxErrorNotification. Thanks Marcus Denker
	http://code.google.com/p/pharo/issues/detail?id=7327
	
 Issue 7331:	NewList update :)Thanks Benjamin van Ryseghem
	http://code.google.com/p/pharo/issues/detail?id=7327'.
	self loadTogether: self script469 merge: false.
	self flushCaches.

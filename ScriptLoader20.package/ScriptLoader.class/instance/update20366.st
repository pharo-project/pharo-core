pharo - updates
update20366
	"self new update20366"
	self withUpdateLog: 'Issue 6881:	replace two users of ClassListBrowser with Nautilus on Environments
	http://code.google.com/p/pharo/issues/detail?id=6881
	
Issue 6596:	Date>>#printOn:format: not adhering to 4 digit year
	http://code.google.com/p/pharo/issues/detail?id=6596'.
	self loadTogether: self script348 merge: false.
	self flushCaches.

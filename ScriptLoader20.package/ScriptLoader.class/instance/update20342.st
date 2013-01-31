pharo - updates
update20342
	"self new update20342"
	self withUpdateLog: 'Issue 6815:	Free freetype from bugs
	http://code.google.com/p/pharo/issues/detail?id=6815
	
Issue 6679:	Failing test: ZnHTTPSTests.testPayPal
	http://code.google.com/p/pharo/issues/detail?id=6679
	
Issue 6812:	Smalltalkhub Monticello Repository throws error when empty
	http://code.google.com/p/pharo/issues/detail?id=6812'.
	self loadTogether: self script324 merge: false.
	self flushCaches.

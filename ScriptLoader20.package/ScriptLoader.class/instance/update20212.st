pharo - updates
update20212
	"self new update20212"
	self withUpdateLog: 'Issue 6369:	clean menu entries #openSingleMessageBrowser
	http://code.google.com/p/pharo/issues/detail?id=6369
	
Issue 6368:	Some small cleanups related to TTC font cleanup
	http://code.google.com/p/pharo/issues/detail?id=6368
	
Issue 6367:	Remove FormSetFont
	http://code.google.com/p/pharo/issues/detail?id=6367
	
Issue 6364:	Zodiac.Tests.ZdcSecureSocketStreamTests.testIsNativeSSLPluginPresent
	http://code.google.com/p/pharo/issues/detail?id=6364
	
Issue 6344:	Failing test testDownloadSmallHTML
	http://code.google.com/p/pharo/issues/detail?id=6344'.
	self loadTogether: self script202 merge: false.
	self flushCaches.

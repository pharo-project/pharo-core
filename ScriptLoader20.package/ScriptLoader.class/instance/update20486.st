pharo - updates
update20486
	"self new update20486"
	self withUpdateLog: 'Issue 7316:	Jenkins: Some tests are run twice
	http://code.google.com/p/pharo/issues/detail?id=7316
	
Issue 6861:	cmd+w is broken for explore browser
	http://code.google.com/p/pharo/issues/detail?id=6861
	
Issue 7313:	MCWorkingCopy querying facilities...
	http://code.google.com/p/pharo/issues/detail?id=7313'.
	self loadTogether: self script464 merge: false.
	self flushCaches.

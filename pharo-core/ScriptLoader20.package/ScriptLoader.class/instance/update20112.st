pharo - updates
update20112
	"self new update20112"
	self withUpdateLog: 'Issue 6009:	Improved ProcessTest
	http://code.google.com/p/pharo/issues/detail?id=6009

Issue 6023:	Enhance MCHttpRepository>>readStreamForFileNamed:do: to require binary data
	http://code.google.com/p/pharo/issues/detail?id=6023
	
Issue 6022:	Nuke Stream>>isTypeHTTP and Stream>>sleep
	http://code.google.com/p/pharo/issues/detail?id=6022
'.
	self loadTogether: self script102 merge: false.
	self flushCaches.

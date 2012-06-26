pharo - updates
update20113
	"self new update20113"
	self withUpdateLog: ' Issue 6023:	Enhance MCHttpRepository>>readStreamForFileNamed:do: to require binary data
	http://code.google.com/p/pharo/issues/detail?id=6023
	
Issue 5416:	Improve MC version loading
	http://code.google.com/p/pharo/issues/detail?id=5416'.
	self loadTogether: self script103 merge: false.
	self flushCaches.

pharo - updates
update20195
	"self new update20195"
	self withUpdateLog: 'Issue 6259:	DataStream is still there
	http://code.google.com/p/pharo/issues/detail?id=6259
	
Issue 4095:	Suggestion: rename some methods for consistency
	(just example methods, no API changes)
	http://code.google.com/p/pharo/issues/detail?id=4095'.
	self loadTogether: self script185 merge: false.
	SmalltalkImage current removeClassNamed: #DataStream.
	self flushCaches.

pharo - updates
update20218
	"self new update20218"
	self withUpdateLog: 'Issue 6400:	Deprecate more methods SmalltalkImage
	http://code.google.com/p/pharo/issues/detail?id=6400
	
Issue 6397:	Morph has empty *NautilusCommon- method protocol
	http://code.google.com/p/pharo/issues/detail?id=6397
	
Issue 6396:	Monticello extension to tools (ChangeList)
	http://code.google.com/p/pharo/issues/detail?id=6396
	
Issue 6155:	Find a better package for MultiByteFileStream and MultiByteBinaryOrTextStream
	http://code.google.com/p/pharo/issues/detail?id=6155'.
	self loadTogether: self script208 merge: false.
	ScriptLoader new cleanUpForRelease.
	self flushCaches.

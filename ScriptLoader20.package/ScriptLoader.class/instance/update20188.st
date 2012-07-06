pharo - updates
update20188
	"self new update20188"
	self withUpdateLog: 'Issue 6288:	New Spec-Core
	http://code.google.com/p/pharo/issues/detail?id=6288
	
Issue 6287:	New version of NautilusCommon
	http://code.google.com/p/pharo/issues/detail?id=6287
	
Issue 6282:	Smalltalk vm imagePath should use the primImageName
	http://code.google.com/p/pharo/issues/detail?id=6282
	
Issue 6286:	WindowsStore >> #pathFromString: modifies the original string
	http://code.google.com/p/pharo/issues/detail?id=6286
	
Issue 6278:	snapshot:andQuit: does no long return if resuming
	http://code.google.com/p/pharo/issues/detail?id=6278'.
	self loadTogether: self script178 merge: false.
	self flushCaches.

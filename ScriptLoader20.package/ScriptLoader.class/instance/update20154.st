pharo - updates
update20154
	"self new update20154"
	self withUpdateLog: '- Issue 6125:	FileDialogWindow is broken.
	http://code.google.com/p/pharo/issues/detail?id=6125
	
-  Issue 5996:	Debuggable Morphic Draw Error
	http://code.google.com/p/pharo/issues/detail?id=5996'.
	self loadTogether: self script144 merge: false.
	self flushCaches.

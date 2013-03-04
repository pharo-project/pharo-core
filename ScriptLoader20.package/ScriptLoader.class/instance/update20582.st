pharo - updates
update20582
	"self new update20582"
	self withUpdateLog: 'Issue 7625:	reset LogStream of ScriptLoader
	http://code.google.com/p/pharo/issues/detail?id=7625'.
	self loadTogether: self script556 merge: false.
	ScriptLoader resetLogStream.
ImageCleaner cleanUpForRelease.
	self flushCaches.

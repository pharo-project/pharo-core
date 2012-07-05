pharo - updates
update20185
	"self new update20185"
	self withUpdateLog: 'Issue 6139:	Subscript out of bounds in WindowsStore>>pathFromString:
	http://code.google.com/p/pharo/issues/detail?id=6139
	
Issue 6093:	Switch from SmalltalkHub to SS3 for ConfigurationBrowser in Pharo 2.0
	http://code.google.com/p/pharo/issues/detail?id=6093
	
Issue 6260:	Monticello cache location should be configurable
	http://code.google.com/p/pharo/issues/detail?id=6260
	
Issue 6240:	Move #testCounting to the bugTracker as it randomly fails sometimes
	http://code.google.com/p/pharo/issues/detail?id=6240'.
	self loadTogether: self script175 merge: false.
	ScriptLoader new cleanUpForRelease.
	self flushCaches.

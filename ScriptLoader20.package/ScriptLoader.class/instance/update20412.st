pharo - updates
update20412
	"self new update20412"
	self withUpdateLog: 'Issue 7007:	Package System-Change Notification is empy
	http://code.google.com/p/pharo/issues/detail?id=7007'.
	self loadTogether: self script391 merge: false.
	ScriptLoader new deletePackage: 'System-Change Notification'.
	self flushCaches.

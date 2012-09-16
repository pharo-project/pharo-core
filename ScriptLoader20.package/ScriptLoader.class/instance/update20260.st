pharo - updates
update20260
	"self new update20260"
	self withUpdateLog: 'Issue 6577:	Add Repackaging Announcements
	http://code.google.com/p/pharo/issues/detail?id=6577'.
	self loadTogether: self script247 merge: false.
	ScriptLoader new unregisterPackage: 'RPackage'.
	self flushCaches.

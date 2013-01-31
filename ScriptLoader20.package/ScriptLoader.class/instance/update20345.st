pharo - updates
update20345
	"self new update20345"
	self withUpdateLog: 'Issue 6818:	All test runners for 2.0 are red on jenkins
	http://code.google.com/p/pharo/issues/detail?id=6818
	
Issue 6785:	Do we really need to cache DebuggerMethodMap?
	http://code.google.com/p/pharo/issues/detail?id=6785
	
Issue 6814:	Adde simple Color Scheme Setting
	http://code.google.com/p/pharo/issues/detail?id=6814'.
	self loadTogether: self script327 merge: false.
	SHPreferences setStyleTableNamed: 'Blue'. 
.
	self flushCaches.

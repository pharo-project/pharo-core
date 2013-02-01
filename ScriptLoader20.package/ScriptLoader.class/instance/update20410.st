pharo - updates
update20410
	"self new update20410"
	self withUpdateLog: 'Issue 7005:	overlapping packages UI and UI-Basic
	http://code.google.com/p/pharo/issues/detail?id=7005
	
Issue 7004:	remove ChangeSorter from privCleanUnloadMethods
	http://code.google.com/p/pharo/issues/detail?id=7004
	
Issue 6992:	#cleanUpForRelease breaks image
	http://code.google.com/p/pharo/issues/detail?id=6992'.
	self loadTogether: self script389 merge: false.
	ScriptLoader new unregisterPackage: 'UI-Basic'.
	self flushCaches.

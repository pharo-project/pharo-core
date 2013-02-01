pharo - updates
update20435
	"self new update20435"
	self withUpdateLog: 'Issue 7120:	Make Print It deal better with errors in printString
	http://code.google.com/p/pharo/issues/detail?id=7120
 
Issue 7099:	Integration of NewList in 2.0 (again)
	http://code.google.com/p/pharo/issues/detail?id=7099	

Issue 7024:	unify #compile:classified:withStamp:notifying:logSource:
	http://code.google.com/p/pharo/issues/detail?id=7024'.
	self loadTogether: self script414 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.

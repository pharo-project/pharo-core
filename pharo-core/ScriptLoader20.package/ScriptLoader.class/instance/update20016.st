pharo - updates
update20016
	"self new update20016"
	self withUpdateLog: 'Issue 5701:	Obsolete Classes in 2.0
	http://code.google.com/p/pharo/issues/detail?id=5701
	
Issue 5708:	Smooth Block code editing in Debugger
	http://code.google.com/p/pharo/issues/detail?id=5708
	
Issue 5689:	remove #checkOKToAdd:at:
	http://code.google.com/p/pharo/issues/detail?id=5689
	
Issue 5707:	Integrate Keymappings-Tests into Pharo2.0
	http://code.google.com/p/pharo/issues/detail?id=5707'.
	self loadTogether: self script10 merge: false.
	Smalltalk tools remove: #messageNames.
ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.

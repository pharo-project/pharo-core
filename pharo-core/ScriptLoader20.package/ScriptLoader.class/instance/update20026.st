pharo - updates
update20026
	"self new update20026"
	self withUpdateLog: 'Issue 5722:	Be able to remove traits from class definition
	http://code.google.com/p/pharo/issues/detail?id=5722
	
Issue 5715:	Enhance the Slice Maker so that is gets the issue title automatically
	http://code.google.com/p/pharo/issues/detail?id=5715
	
Issue 5580:	MCOrganization unload correctly
	http://code.google.com/p/pharo/issues/detail?id=5580'.
	self loadTogether: self script20 merge: false.
	ScriptLoader new cleanUpForRelease.
	self flushCaches.

pharo - updates
update20384
	"self new update20384"
	self withUpdateLog: 'Issue 6931:	Command Line: load image update
	http://code.google.com/p/pharo/issues/detail?id=6931
	
Issue 6932:	Repository not added to some packages
	http://code.google.com/p/pharo/issues/detail?id=6932'.
	self loadTogether: self script364 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.

pharo - updates
update20102
	"self new update20102"
	self withUpdateLog: 'Issue 5999:	obsolete class (SARInstaller) in 20101
	http://code.google.com/p/pharo/issues/detail?id=5999
	
Issue 5985:	move Unicode initialization to a separate package
	http://code.google.com/p/pharo/issues/detail?id=5985'.
	self loadTogether: self script92 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
FileServices removeObsolete.
.
	self flushCaches.

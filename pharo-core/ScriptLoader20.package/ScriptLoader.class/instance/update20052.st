pharo - updates
update20052
	"self new update20052"
	self withUpdateLog: 'Issue 5812:	Add new Chunk format importer
	http://code.google.com/p/pharo/issues/detail?id=5812
	
Issue 5808:	SimpleCodeLoader not needed
	http://code.google.com/p/pharo/issues/detail?id=5808'.
	self loadTogether: self script44 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
.
	self flushCaches.

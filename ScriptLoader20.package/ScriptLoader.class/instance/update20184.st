pharo - updates
update20184
	"self new update20184"
	self withUpdateLog: 'ScriptLoader new addHomeRepositoryToAllPackages.
Compiler recompileAll.'.
	self loadTogether: self script174 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
Compiler recompileAll.
	self flushCaches.

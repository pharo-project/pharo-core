pharo - updates
update20096
	"self new update20096"
	self withUpdateLog: '- add home to all repos
- cleanupforrelease'.
	self loadTogether: self script85 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
ScriptLoader new cleanUpForRelease.
	self flushCaches.

update40030
	"self new update40030"
	self withUpdateLog: '13355 should extract Workspace in Tool-Workspace
	https://pharo.fogbugz.com/f/cases/13355

13356 should move Morphic-base list into Morphic-Widgets-List
	https://pharo.fogbugz.com/f/cases/13356

'.
	self loadTogether: self script30 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.

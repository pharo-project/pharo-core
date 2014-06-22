update40032
	"self new update40032"
	self withUpdateLog: '13360 Basic Widgets should be put in Morphic-Widgets-Basic
	https://pharo.fogbugz.com/f/cases/13360

13363 Tools-Explorer category should be turned into Tool-Explorer package
	https://pharo.fogbugz.com/f/cases/13363

'.
	self loadTogether: self script32 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.

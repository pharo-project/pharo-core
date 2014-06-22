update40035
	"self new update40035"
	self withUpdateLog: '13354 should move Tabs into Morphic-Widgets-Tabs
	https://pharo.fogbugz.com/f/cases/13354

13362 FileList should be extracted from Tools and move to MorphicWidgets-FileList
	https://pharo.fogbugz.com/f/cases/13362

'.
	self loadTogether: self script35 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.

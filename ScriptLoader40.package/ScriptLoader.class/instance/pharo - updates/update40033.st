update40033
	"self new update40033"
	self withUpdateLog: '13366 Extract Scroll related class from Morphic-Base and move them in Morphic-Widgets-Scrolling
	https://pharo.fogbugz.com/f/cases/13366

'.
	self loadTogether: self script33 merge: false.
	ScriptLoader new addHomeRepositoryToAllPackages.
	self flushCaches.

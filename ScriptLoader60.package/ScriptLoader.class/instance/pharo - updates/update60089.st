update60089
	"self new update60089"
	self withUpdateLog: '15849 Remove NewList
	https://pharo.fogbugz.com/f/cases/15849

18282 Scrollbar doesnt move when scrollValue is set in TextModel
	https://pharo.fogbugz.com/f/cases/18282'.
	self loadTogether: self script60089 merge: false.
	
ScriptLoader new unloadPackageNamed: 'Morphic-Widgets-NewList'.
	self flushCaches.

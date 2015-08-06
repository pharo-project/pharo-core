update50210
	"self new update50210"
	
BIConfigurableFormatter initialize.
	self withUpdateLog: '16093 Remove a forgotten PluggableTextMorph in groups 
	https://pharo.fogbugz.com/f/cases/16093

15633 FT2Handle needs to cleanUp on exit, not on startup
	https://pharo.fogbugz.com/f/cases/15633

16087 Package BlueInk-Core is empty
	https://pharo.fogbugz.com/f/cases/16087'.
	self loadTogether: self script50210 merge: false.
	
Smalltalk addToStartUpList: FreeTypeSettings before: WorldMorph.
Smalltalk addToStartUpList: FT2Handle  before: FreeTypeSettings.
ScriptLoader new unloadPackageNamed: 'BlueInk-Core'.
	self flushCaches.

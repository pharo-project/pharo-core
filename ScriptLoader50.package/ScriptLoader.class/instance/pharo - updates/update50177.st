update50177
	"self new update50177"
	self withUpdateLog: '15971 SubscriptOutOfBounds: 0 on whileFalse:
	https://pharo.fogbugz.com/f/cases/15971

15999 remove empty package ToolsTest
	https://pharo.fogbugz.com/f/cases/15999

13686 Morphic-Widgets-Tabs depends on Spec-Core
	https://pharo.fogbugz.com/f/cases/13686'.
	self loadTogether: self script50177 merge: false.
	
ScriptLoader new unloadPackageNamed: 'ToolsTest'.
	self flushCaches.

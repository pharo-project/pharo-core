update40556
	"self new update40556"
	self withUpdateLog: '15064 DynamicSpecExample should use #label: instead of deprecated #text:
	https://pharo.fogbugz.com/f/cases/15064

15125 PharoCommonTools>>#cleanUp changes collection while iterating
	https://pharo.fogbugz.com/f/cases/15125

15045 GTPharo4Extensions should be merged into GT-SpotterExtensions-Core
	https://pharo.fogbugz.com/f/cases/15045'.
	self loadTogether: self script556 merge: false.
	
ScriptLoader new deletePackage: 'GTPharo4Extensions'.
	self flushCaches.

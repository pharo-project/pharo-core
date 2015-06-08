update50095
	"self new update50095"
	
FileContentsBrowser unload.
	self withUpdateLog: '15715 Character>>#serializeOn: needs to use accessor to value
	https://pharo.fogbugz.com/f/cases/15715

15712 Remove FileContentsBrowser
	https://pharo.fogbugz.com/f/cases/15712'.
	self loadTogether: self script50095 merge: false.
	
ScriptLoader new unloadPackageNamed: 'Tool-FilePackageBrowser'.
	self flushCaches.

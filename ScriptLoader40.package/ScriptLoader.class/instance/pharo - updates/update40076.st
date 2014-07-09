update40076
	"self new update40076"
	self withUpdateLog: '13501 EyeInspector has a slow refresh time (part 1)
	https://pharo.fogbugz.com/f/cases/13501

13510 MatrixTransformMorph is not used
	https://pharo.fogbugz.com/f/cases/13510

13514 delete empty packages KeyChain and Settings-Compiler
	https://pharo.fogbugz.com/f/cases/13514
'.
	self loadTogether: self script76 merge: false.
	ScriptLoader new deletePackage: 'KeyChain'.
ScriptLoader new deletePackage: 'Settings-Compiler'.
	self flushCaches.
self cleanRepositories.

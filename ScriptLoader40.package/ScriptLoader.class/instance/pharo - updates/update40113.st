update40113
	"self new update40113"
	self withUpdateLog: '13636 extension method Tool-File should be in Tool-FileList
	https://pharo.fogbugz.com/f/cases/13636

13519 Problem when printing heaps
	https://pharo.fogbugz.com/f/cases/13519

13637 delete empty packages Network-RFC822 and Settings-Network
	https://pharo.fogbugz.com/f/cases/13637'.
	self loadTogether: self script113 merge: false.
	ScriptLoader new deletePackage: 'Network-RFC822'.
ScriptLoader new deletePackage: 'Settings-Network'.
ScriptLoader new deletePackage: 'Tool-File'.
	self flushCaches.
self cleanRepositories.

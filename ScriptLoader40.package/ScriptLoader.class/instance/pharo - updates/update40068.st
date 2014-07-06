update40068
	"self new update40068"
	self withUpdateLog: '13471 Refactoring in contextual menu in Message Browser
	https://pharo.fogbugz.com/f/cases/13471

13458 Rendering text with Athens and StrikeFonts
	https://pharo.fogbugz.com/f/cases/13458

13478 The History Package has two classes that are support for tools --> move to Tools-Base
	https://pharo.fogbugz.com/f/cases/13478

'.
	self loadTogether: self script68 merge: false.
	ScriptLoader new deletePackage: 'History'.
	self flushCaches.
self cleanRepositories.

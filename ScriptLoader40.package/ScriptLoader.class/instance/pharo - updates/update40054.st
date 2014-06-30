update40054
	"self new update40054"
	self withUpdateLog: '13436 delete empty packages Tabs and NewList
	https://pharo.fogbugz.com/f/cases/13436

13434 No need for #openBrowser
	https://pharo.fogbugz.com/f/cases/13434
	
13435 Clean ChangeList
	https://pharo.fogbugz.com/f/cases/13435'.
	self loadTogether: self script54 merge: false.
	ScriptLoader new deletePackage: 'Tabs' .
ScriptLoader new deletePackage: 'NewList'.
	self flushCaches.

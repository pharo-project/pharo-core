update60370
	"self new update60370"
	self withUpdateLog: '13159 ListDialogWindow - Grow Width to Fit List
	https://pharo.fogbugz.com/f/cases/13159

19620 Unload Tool-TxWorkspace
	https://pharo.fogbugz.com/f/cases/19620'.
	self loadTogether: self script60370 merge: false.
	
ScriptLoader new unloadPackageNamed: 'Tool-TxWorkspace'.
	self flushCaches.

update40004
	"self new update40004"
	self withUpdateLog: '13280 integrate pharo dark theme
	https://pharo.fogbugz.com/f/cases/13280
'.
	self loadTogether: self script3 merge: false.
	(MCWorkingCopy allManagers 
    detect: [ :each | each packageName = 'Pharo3DarkTheme' ]) 
    unload.
ScriptLoader new cleanRepositories.
	self flushCaches.

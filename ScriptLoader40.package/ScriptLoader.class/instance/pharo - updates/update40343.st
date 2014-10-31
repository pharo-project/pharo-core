update40343
	"self new update40343"
	
ThemeIcons classVarNamed: 'Current' put: ThemeIcons current.
	self withUpdateLog: '14325 ThemeIcons should use class variable for singleton
	https://pharo.fogbugz.com/f/cases/14325'.
	self loadTogether: self script343 merge: false.
	self flushCaches.

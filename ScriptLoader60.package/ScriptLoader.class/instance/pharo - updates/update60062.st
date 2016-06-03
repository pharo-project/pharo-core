update60062
	"self new update60062"
	self withUpdateLog: '18375 remove package ConfigurationOfNautilusGroupAutoBuilder
	https://pharo.fogbugz.com/f/cases/18375'.
	self loadTogether: self script60062 merge: false.
	
ScriptLoader new unloadPackageNamed: #ConfigurationOfNautilusGroupAutoBuilder.
	self flushCaches.

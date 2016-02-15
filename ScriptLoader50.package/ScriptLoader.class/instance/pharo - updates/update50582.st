update50582
	"self new update50582"
	
ScriptLoader new unloadPackageNamed: 'ConfigurationOfAthens'.
	self withUpdateLog: '17586 CredentialEditor class defaultSpec wrong pragma name
	https://pharo.fogbugz.com/f/cases/17586

17583 Morph>>#cornerStyle sets the extension variable
	https://pharo.fogbugz.com/f/cases/17583

17579 Update Athens version 3.8
	https://pharo.fogbugz.com/f/cases/17579'.
	self loadTogether: self script50582 merge: false.
	self loadConfiguration: 'Athens' version: '3.8'.self flushCaches.

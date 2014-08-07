update40161
	"self new update40161"
	self withUpdateLog: '13795 Browsing certain classes takes several seconds
	https://pharo.fogbugz.com/f/cases/13795

13800 another small SystemNavigation cleanup
	https://pharo.fogbugz.com/f/cases/13800

13798 empty package UI can be deleted
	https://pharo.fogbugz.com/f/cases/13798'.
	self loadTogether: self script161 merge: false.
	ScriptLoader new deletePackage: 'UI'.
	self flushCaches.
self cleanRepositories.

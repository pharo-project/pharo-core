update50536
	"self new update50536"
	self withUpdateLog: '17425 unload BaselineOfFFINB
	https://pharo.fogbugz.com/f/cases/17425

17427 deprecated Form class>>#unload
	https://pharo.fogbugz.com/f/cases/17427'.
	self loadTogether: self script50536 merge: false.
	
ScriptLoader new unloadPackageNamed: 'BaselineOfFFINB'.
	self flushCaches.

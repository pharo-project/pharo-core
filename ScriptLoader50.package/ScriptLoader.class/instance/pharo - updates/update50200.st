update50200
	"self new update50200"
	self withUpdateLog: '16062 WorkspaceTest>>#testStyling is failing
	https://pharo.fogbugz.com/f/cases/16062

16060 remove empty packages GroupManager and GroupManagerUI
	https://pharo.fogbugz.com/f/cases/16060

16011 Remove old Pretty Printer
	https://pharo.fogbugz.com/f/cases/16011'.
	self loadTogether: self script50200 merge: false.
	
ScriptLoader new unloadPackageNamed: 'GroupManager'.
ScriptLoader new unloadPackageNamed: 'GroupManagerUI'.
	self flushCaches.

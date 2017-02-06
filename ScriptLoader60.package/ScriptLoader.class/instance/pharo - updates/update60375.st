update60375
	"self new update60375"
	self withUpdateLog: '18271 BaselineOfFileTree is in the old version
	https://pharo.fogbugz.com/f/cases/18271

18837 RBParser should not crash when parsing a faulty method node
	https://pharo.fogbugz.com/f/cases/18837

19655 Handle events during progressBar usage
	https://pharo.fogbugz.com/f/cases/19655'.
	self loadTogether: self script60375 merge: false.
	
ScriptLoader new unloadPackageNamed: #BaselineOfFileTree.
	self flushCaches.

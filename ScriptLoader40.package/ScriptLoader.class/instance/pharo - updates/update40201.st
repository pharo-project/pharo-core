update40201
	"self new update40201"
	self withUpdateLog: '13952 Pool access lookup crash
	https://pharo.fogbugz.com/f/cases/13952

13811 Improve Pharo Environment Help Text
	https://pharo.fogbugz.com/f/cases/13811

13929 RBBasicLintRuleTest class implements protocols
	https://pharo.fogbugz.com/f/cases/13929
	
13930 remove empty packages NOCompiletion and NECompletion-Tests
	https://pharo.fogbugz.com/f/cases/13930

'.
	self loadTogether: self script201 merge: false.
	ScriptLoader new deletePackage: 'NOCompletion'.
ScriptLoader new deletePackage: 'NECompletion-Tests'.
	self flushCaches.
self cleanRepositories.

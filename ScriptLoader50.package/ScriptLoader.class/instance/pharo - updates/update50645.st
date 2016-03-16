update50645
	"self new update50645"
	self withUpdateLog: '17824 QASettings>>#initialize has undeclared var spotterPlugin
	https://pharo.fogbugz.com/f/cases/17824

17817 Creatng a new class where the name starts with a subclass of is considered valid class name
	https://pharo.fogbugz.com/f/cases/17817

17612 Fail on CI: RPackageReleaseTest>>#testUnpackagedClasses	
	https://pharo.fogbugz.com/f/cases/17612'.
	self loadTogether: self script50645 merge: false.
	self loadConfiguration: 'QualityAssistant' version: 'v2.5.2'.self flushCaches.

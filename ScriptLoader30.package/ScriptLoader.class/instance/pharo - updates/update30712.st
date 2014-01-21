update30712
	"self new update30712"
	self withUpdateLog: '12685 wrong version ordering in NewVersionBrowser compareTo
	https://pharo.fogbugz.com/f/cases/12685

12686 Failing test: testClassRespectsPolymorphismWithTrait
	https://pharo.fogbugz.com/f/cases/12686

12688 Fix WorldModel layout
	https://pharo.fogbugz.com/f/cases/12688
'.
	self loadTogether: self script365 merge: false.
	WorldModel
addInstVarNamed: 'removeme';
removeInstVarNamed: 'removeme'.
	self flushCaches.

update60366
	"self new update60366"
	self withUpdateLog: '17352 DisplayScreen should have a class initialization method
	https://pharo.fogbugz.com/f/cases/17352

19544 Better method comment for RubEditingMode>>interactive
	https://pharo.fogbugz.com/f/cases/19544

19614 Better names for NoModificationError and friends
	https://pharo.fogbugz.com/f/cases/19614

18767 Remove external dependencies from Collection-Tests
	https://pharo.fogbugz.com/f/cases/18767

19325 Warning: dependency declared not detected as a dependency
	https://pharo.fogbugz.com/f/cases/19325'.
	self loadTogether: self script60366 merge: false.
	self loadConfiguration: 'DependencyAnalyser' version: '1.21'.self flushCaches.

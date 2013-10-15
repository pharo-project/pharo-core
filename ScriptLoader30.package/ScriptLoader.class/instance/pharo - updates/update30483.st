update30483
	"self new update30483"
	self withUpdateLog: '11877 Improve testClassRespectsPolymorphismWithTrait error message
	https://pharo.fogbugz.com/f/cases/11877
	
11870 move shrinking methods to own class
	https://pharo.fogbugz.com/f/cases/11870
	
11878 Move KMBuilder deprecated methods to Deprecated30 package
	https://pharo.fogbugz.com/f/cases/11878
'.
	self loadTogether: self script138 merge: false.
	self flushCaches.

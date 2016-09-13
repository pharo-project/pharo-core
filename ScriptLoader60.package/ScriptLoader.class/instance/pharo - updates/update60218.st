update60218
	"self new update60218"
	self withUpdateLog: '19079 CriticBrowser can not show result for transformation rules anymore (DNU)
	https://pharo.fogbugz.com/f/cases/19079

19071 FuelOutStackDebugAction should not hide error
	https://pharo.fogbugz.com/f/cases/19071'.
	self loadTogether: self script60218 merge: false.
	self flushCaches.

update30709
	"self new update30709"
	self withUpdateLog: '11714 NewVersionBrowser needs to be finished 
	https://pharo.fogbugz.com/f/cases/11714

12532 Unable to find sources file: blank image screen when starting Pharo30 and vm crash report
	https://pharo.fogbugz.com/f/cases/12532

12680 RPackage>>includesClassNamed: does not ensure that name is a Symbol
	https://pharo.fogbugz.com/f/cases/12680

12681 remove #copyReplaceAll:with:asTokens: from SquenceableCollection
	https://pharo.fogbugz.com/f/cases/12681

'.
	self loadTogether: self script362 merge: false.
	self flushCaches.

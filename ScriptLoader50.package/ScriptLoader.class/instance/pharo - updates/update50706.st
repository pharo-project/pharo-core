update50706
	"self new update50706"
	self withUpdateLog: '18051 fix bug in depedency analyzer reverse analysis
	https://pharo.fogbugz.com/f/cases/18051

18038 Missing allIconNames
	https://pharo.fogbugz.com/f/cases/18038'.
	self loadTogether: self script50706 merge: false.
	self loadConfiguration: 'DependencyAnalyser' version: '1.18'.self flushCaches.

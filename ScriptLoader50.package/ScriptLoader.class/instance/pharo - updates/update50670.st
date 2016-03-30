update50670
	"self new update50670"
	self withUpdateLog: '17886 dependency analyzer throws DNU on reverse analysis
	https://pharo.fogbugz.com/f/cases/17886'.
	self loadTogether: self script50670 merge: false.
	self loadConfiguration: 'DependencyAnalyser' version: '1.16'.self flushCaches.

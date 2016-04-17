update50695
	"self new update50695"
	self withUpdateLog: '18008 Zinc Update April 2016
	https://pharo.fogbugz.com/f/cases/18008

18012 PharoCommandLineHandler uses SystemSettingsPersistence that is not present in the minimal Pharo
	https://pharo.fogbugz.com/f/cases/18012'.
	self loadTogether: self script50695 merge: false.
	self loadConfiguration: 'ZincHTTPComponents' version: '2.7.1'.self flushCaches.

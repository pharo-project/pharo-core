update50703
	"self new update50703"
	self withUpdateLog: '18027 add reset message to MCCacheRepository
	https://pharo.fogbugz.com/f/cases/18027

18034 testIsPrime is broken with modern VM made with LargeIntegersPlugin v2.0
	https://pharo.fogbugz.com/f/cases/18034'.
	self loadTogether: self script50703 merge: false.
	self flushCaches.

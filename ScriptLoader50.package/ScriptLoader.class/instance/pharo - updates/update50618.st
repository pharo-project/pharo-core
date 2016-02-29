update50618
	"self new update50618"
	self withUpdateLog: '17704 Failing test on CI for mac: KMCombinationTests>>#testMacMetaShouldBeCmd
	https://pharo.fogbugz.com/f/cases/17704

17713 select right fallback UIManager
	https://pharo.fogbugz.com/f/cases/17713

17686 Add rules about Rubric method precedence
	https://pharo.fogbugz.com/f/cases/17686'.
	self loadTogether: self script50618 merge: false.
	self loadConfiguration: 'Rubric' version: '2.8.1'.self flushCaches.

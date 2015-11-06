update50422
	"self new update50422"
	self withUpdateLog: '16935 Source Sans and Code fonts do not support non-latin characters (symbols or cyrillic)
	https://pharo.fogbugz.com/f/cases/16935

16940 better tearDown ReflectiveMethodTest
	https://pharo.fogbugz.com/f/cases/16940'.
	self loadTogether: self script50422 merge: false.
	self flushCaches.

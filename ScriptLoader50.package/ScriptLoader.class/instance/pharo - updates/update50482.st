update50482
	"self new update50482"
	self withUpdateLog: '17176 Simplify Deprecation refactoring
	https://pharo.fogbugz.com/f/cases/17176

17171 String>>#asSlotCollection parsing does not handle non valid characters
	https://pharo.fogbugz.com/f/cases/17171

17166 bad completion suggestions on method definitions
	https://pharo.fogbugz.com/f/cases/17166'.
	self loadTogether: self script50482 merge: false.
	self flushCaches.

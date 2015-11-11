update50436
	"self new update50436"
	self withUpdateLog: '16991 fix: be able to invalidate the whole image (classes and metaclasses)
	https://pharo.fogbugz.com/f/cases/16991

16985 #methodDictAddSelectorSilently:withMethod: not needed
	https://pharo.fogbugz.com/f/cases/16985'.
	self loadTogether: self script50436 merge: false.
	self flushCaches.

update50489
	"self new update50489"
	self withUpdateLog: '17209 NEC wrong type guessing
	https://pharo.fogbugz.com/f/cases/17209

10312 TextHighlightByBounds and TextHighlight are near duplicated classes
	https://pharo.fogbugz.com/f/cases/10312

17205 DNU when accepting an empty string 
	https://pharo.fogbugz.com/f/cases/17205'.
	self loadTogether: self script50489 merge: false.
	self flushCaches.

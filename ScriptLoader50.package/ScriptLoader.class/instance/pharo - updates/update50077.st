update50077
	"self new update50077"
	self withUpdateLog: '15639 rubric has a lot of hardcoded defaults (for colors, etc.)
	https://pharo.fogbugz.com/f/cases/15639

15138 inprecise interpolateTo:at: for floats
	https://pharo.fogbugz.com/f/cases/15138'.
	self loadTogether: self script50077 merge: false.
	self loadConfiguration: 'Rubric' version: '1.2.16'.
RubAbstractTextArea textColor: nil.
	self flushCaches.

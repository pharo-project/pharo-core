update50280
	"self new update50280"
	self withUpdateLog: '16377 Formater bug on FileReference with cascade
	https://pharo.fogbugz.com/f/cases/16377

16398 System-FileRegistry depends on Morphic
	https://pharo.fogbugz.com/f/cases/16398

16401 opening monticello window does not respect world size
	https://pharo.fogbugz.com/f/cases/16401

16397 DummyUIManager depends on System-VMEvents
	https://pharo.fogbugz.com/f/cases/16397

16396 Timezone>>local should use LocalTimeZone
	https://pharo.fogbugz.com/f/cases/16396'.
	self loadTogether: self script50280 merge: false.
	self flushCaches.

update40429
	"self new update40429"
	self withUpdateLog: '14668 HandMorph event statistics should be off by default with preference
	https://pharo.fogbugz.com/f/cases/14668

14652 Float class fromIEEE32Bit: gradual underflow handling is buggy
	https://pharo.fogbugz.com/f/cases/14652'.
	self loadTogether: self script429 merge: false.
	
"Set event stats off by default"
HandMorph logEventStatsStop.
	self flushCaches.

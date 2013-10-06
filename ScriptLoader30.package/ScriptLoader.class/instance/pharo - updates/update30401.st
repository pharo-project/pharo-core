update30401
	"self new update30401"
	self withUpdateLog: '11250 Inspector scrolls up on refresh
	https://pharo.fogbugz.com/f/cases/11250
	
11594 Activate NonInteractiveTranscript when using CommandLineUIManager
	https://pharo.fogbugz.com/f/cases/11594
	
11557 Color class>>fromRGBTriplet: is redundant now that Color holds alpha
	https://pharo.fogbugz.com/f/cases/11557
	
'.
	self loadTogether: self script193 merge: false.
	self flushCaches.

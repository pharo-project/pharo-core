update30674
	"self new update30674"
	self withUpdateLog: '12569 TextModel should not move scroll when accepting text
	https://pharo.fogbugz.com/f/cases/12569
	
'.
	self loadTogether: self script327 merge: false.
	self flushCaches.

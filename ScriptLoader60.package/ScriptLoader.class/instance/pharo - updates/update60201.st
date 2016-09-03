update60201
	"self new update60201"
	self withUpdateLog: '19015 Tests should never hang and leave forked processes live
	https://pharo.fogbugz.com/f/cases/19015

18606 MessageBrowser should use fast table and provide filter field
	https://pharo.fogbugz.com/f/cases/18606

19034 Improve comment of round: 
	https://pharo.fogbugz.com/f/cases/19034'.
	self loadTogether: self script60201 merge: false.
	self flushCaches.

update30802
	"self new update30802"
	self withUpdateLog: '13080 Shout does not recognize doubled vertical bar || as a binary selector
	https://pharo.fogbugz.com/f/cases/13080

13083 Shout does not recognize Scaled decimal terminated by s
	https://pharo.fogbugz.com/f/cases/13083

13085 Large Integer and Fraction should avoid Float overflow when asked for their floogLog:
	https://pharo.fogbugz.com/f/cases/13085

'.
	self loadTogether: self script455 merge: false.
	self flushCaches.

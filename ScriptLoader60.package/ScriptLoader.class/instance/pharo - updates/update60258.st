update60258
	"self new update60258"
	self withUpdateLog: '19193 Halt once comment is bad
	https://pharo.fogbugz.com/f/cases/19193

19195 Integrate Epicea 8.0.4
	https://pharo.fogbugz.com/f/cases/19195

15624 package info from explicit requirement in a trait chain
	https://pharo.fogbugz.com/f/cases/15624

19192 Point >> dist: -> Point >> distanceTo: 
	https://pharo.fogbugz.com/f/cases/19192'.
	self loadTogether: self script60258 merge: false.
	self loadConfiguration: 'Epicea' version: '8.0.4'.self flushCaches.

update40089
	"self new update40089"
	self withUpdateLog: '11287 Form class>>fromUserWithExtent: freezes because Rectangle class>>originFromUser:grid: is broken.
	https://pharo.fogbugz.com/f/cases/11287

13550 Should remove the 30 inbox from pharo 40alpha
	https://pharo.fogbugz.com/f/cases/13550

'.
	self loadTogether: self script89 merge: false.
	self flushCaches.
self cleanRepositories.

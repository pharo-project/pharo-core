update60275
	"self new update60275"
	self withUpdateLog: '19264 Coping a class using a Trait does not copy the Trait usage.
	https://pharo.fogbugz.com/f/cases/19264

19235 Remove Object>>#modelWakeUp
	https://pharo.fogbugz.com/f/cases/19235'.
	self loadTogether: self script60275 merge: false.
	self flushCaches.

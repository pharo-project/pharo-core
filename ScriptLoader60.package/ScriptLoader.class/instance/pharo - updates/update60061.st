update60061
	"self new update60061"
	self withUpdateLog: '18368 Move Rubric Shout support into standalone package
	https://pharo.fogbugz.com/f/cases/18368

18358 Integrate Ephemeron Registry
	https://pharo.fogbugz.com/f/cases/18358

18382 STON should not extent RunArray and Text
	https://pharo.fogbugz.com/f/cases/18382'.
	self loadTogether: self script60061 merge: false.
	self flushCaches.

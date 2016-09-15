update60223
	"self new update60223"
	self withUpdateLog: '19083 Introduction of FullBlockClosures (as an option)
	https://pharo.fogbugz.com/f/cases/19083'.
	self loadTogether: self script60223 merge: false.
	self flushCaches.

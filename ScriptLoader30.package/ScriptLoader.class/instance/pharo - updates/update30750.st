update30750
	"self new update30750"
	self withUpdateLog: '12255 Integrate Versionner in Pharo 3.0
	https://pharo.fogbugz.com/f/cases/12255
'.
	self loadTogether: self script403 merge: false.
	self flushCaches.

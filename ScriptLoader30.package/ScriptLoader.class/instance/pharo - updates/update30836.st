update30836
	"self new update30836"
	self withUpdateLog: '11931 Use new flat Pharo logo

	https://pharo.fogbugz.com/f/cases/11931

'.
	self loadTogether: self script489 merge: false.
	PolymorphSystemSettings desktopLogoChanged.
	self flushCaches.

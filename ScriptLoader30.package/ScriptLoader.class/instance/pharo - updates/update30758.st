update30758
	"self new update30758"
	self withUpdateLog: '11573 CTRL shortcuts missing / not working under linux
	https://pharo.fogbugz.com/f/cases/11573

'.
	self loadTogether: self script411 merge: false.
	KMRepository reset.
	self flushCaches.

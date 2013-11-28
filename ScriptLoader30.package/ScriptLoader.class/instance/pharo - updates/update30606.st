update30606
	"self new update30606"
	self withUpdateLog: '12209 RPackage initialization dependent on Monticello
	https://pharo.fogbugz.com/f/cases/12209
	
12264 Komitter
	https://pharo.fogbugz.com/f/cases/12264
'.
	self loadTogether: self script261 merge: false.
	self flushCaches.

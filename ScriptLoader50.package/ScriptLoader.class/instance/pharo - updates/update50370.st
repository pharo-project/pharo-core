update50370
	"self new update50370"
	self withUpdateLog: '16726 move Reflectivity-Styling to a separate package
	https://pharo.fogbugz.com/f/cases/16726

16732 DNU when cancel fetch on retrieve icon sets
	https://pharo.fogbugz.com/f/cases/16732'.
	self loadTogether: self script50370 merge: false.
	self flushCaches.

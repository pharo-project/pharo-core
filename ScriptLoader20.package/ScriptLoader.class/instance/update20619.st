pharo - updates
update20619
	"self new update20619"
	self withUpdateLog: '11209 backport 2.0: Add RPackageSet cache
	https://pharo.fogbugz.com/f/cases/11209
'.
	self loadTogether: self script592 merge: false.
	self flushCaches.

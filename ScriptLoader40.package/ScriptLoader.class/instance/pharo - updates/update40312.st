update40312
	"self new update40312"
	self withUpdateLog: '14270 Workaround: speed up code critique by not checking send messages for now
	https://pharo.fogbugz.com/f/cases/14270'.
	self loadTogether: self script312 merge: false.
	self flushCaches.

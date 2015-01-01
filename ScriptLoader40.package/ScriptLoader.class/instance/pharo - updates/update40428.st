update40428
	"self new update40428"
	self withUpdateLog: '14658 cleaning/commenting SUnit classes
	https://pharo.fogbugz.com/f/cases/14658'.
	self loadTogether: self script428 merge: false.
	self flushCaches.

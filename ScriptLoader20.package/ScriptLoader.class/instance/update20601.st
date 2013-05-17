pharo - updates
update20601
	"self new update20601"
	self withUpdateLog: '10406 backport 2.0: 5819 Implement a way to get the user directories based on the current OS
	https://pharo.fogbugz.com/f/cases/10406
	'.
	self loadTogether: self script574 merge: false.
	self flushCaches.

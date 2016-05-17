update60010
	"self new update60010"
	self withUpdateLog: '18229 Allow String>>#repeat: to repeat a string 0 times
	https://pharo.fogbugz.com/f/cases/18229'.
	self loadTogether: self script60010 merge: false.
	self flushCaches.

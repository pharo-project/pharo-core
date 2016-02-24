update50609
	"self new update50609"
	self withUpdateLog: '17687 fix: changing class comments does not work
	https://pharo.fogbugz.com/f/cases/17687'.
	self loadTogether: self script50609 merge: false.
	self flushCaches.

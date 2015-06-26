update50136
	"self new update50136"
	self withUpdateLog: '15840 RF: add support for #instead links
	https://pharo.fogbugz.com/f/cases/15840

15833 Remove Notifications from Job implementation
	https://pharo.fogbugz.com/f/cases/15833'.
	self loadTogether: self script50136 merge: false.
	self flushCaches.

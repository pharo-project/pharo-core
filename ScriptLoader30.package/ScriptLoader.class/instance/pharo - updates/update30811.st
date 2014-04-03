update30811
	"self new update30811"
	self withUpdateLog: '13145 Speed Up DateAndTime Arithmetic
	https://pharo.fogbugz.com/f/cases/13145

13164 komitter should allow commit to local directories
	https://pharo.fogbugz.com/f/cases/13164

'.
	self loadTogether: self script464 merge: false.
	self flushCaches.

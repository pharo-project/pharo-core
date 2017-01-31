update60368
	"self new update60368"
	self withUpdateLog: '19635 DisplayScreen has  depth 1 on Linux
	https://pharo.fogbugz.com/f/cases/19635'.
	self loadTogether: self script60368 merge: false.
	
DisplayScreen initialize.
	self flushCaches.

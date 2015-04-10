update40602
	"self new update40602"
	self withUpdateLog: '15317 NBInterpreterProxyTest   #testStackPointer and  #testStackPointer2 fail on Windows with new VM
	https://pharo.fogbugz.com/f/cases/15317'.
	self loadTogether: self script602 merge: false.
	self flushCaches.

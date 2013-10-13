update30477
	"self new update30477"
	self withUpdateLog: '11856 Some trivial critic changes related to ifNotNil:
	https://pharo.fogbugz.com/f/cases/11856
	
11861 Deprecated #browseAllCallsOn:, use #browseAllSendersOf:
	https://pharo.fogbugz.com/f/cases/11861
	
11857 add #cleanUp to SystemProgressMorph to reset singleton
	https://pharo.fogbugz.com/f/cases/11857'.
	self loadTogether: self script132 merge: false.
	self flushCaches.

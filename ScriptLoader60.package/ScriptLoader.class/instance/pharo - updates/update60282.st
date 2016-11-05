update60282
	"self new update60282"
	self withUpdateLog: '19289 asClass users are still in the system
	https://pharo.fogbugz.com/f/cases/19289

19248 ByteArray>>#asExternalPointer uses fixed 32bites pointer size
	https://pharo.fogbugz.com/f/cases/19248

19278 Dynamic variables should be removed from the environment when no longer needed
	https://pharo.fogbugz.com/f/cases/19278'.
	self loadTogether: self script60282 merge: false.
	self loadConfiguration: 'UnifiedFFI' version: '0.24.2'.self flushCaches.

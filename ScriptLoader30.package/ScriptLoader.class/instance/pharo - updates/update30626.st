update30626
	"self new update30626"
	self withUpdateLog: '12342 Cleanup on some RPackage methods
	https://pharo.fogbugz.com/f/cases/12342

12347 Cleanup on some Spec methods	
	https://pharo.fogbugz.com/f/cases/12347
	
11293 Get a red square of death when opening File Browser on Windows
	https://pharo.fogbugz.com/f/cases/11293
'.
	self loadTogether: self script281 merge: false.
	self flushCaches.

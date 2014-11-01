update40346
	"self new update40346"
	self withUpdateLog: '14336 monkey fails with Methods equivalently defined in superclass 
	https://pharo.fogbugz.com/f/cases/14336

14363 move StartupLoader to Deprecated40 
	https://pharo.fogbugz.com/f/cases/14363'.
	self loadTogether: self script346 merge: false.
	self flushCaches.

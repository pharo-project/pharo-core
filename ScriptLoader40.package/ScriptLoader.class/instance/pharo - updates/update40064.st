update40064
	"self new update40064"
	self withUpdateLog: '13470 testClassRespectsPolymorphismWithTrait is failing
	https://pharo.fogbugz.com/f/cases/13470

13473 Class Password is unused --> move to Deprecated40
	https://pharo.fogbugz.com/f/cases/13473
	
13472 InputEventSensorSystemSettings can be removed
	https://pharo.fogbugz.com/f/cases/13472


'.
	self loadTogether: self script64 merge: false.
	Smalltalk removeFromShutDownList: Password.
ScriptLoader new deletePackage: 'Settings-Kernel'.
	self flushCaches.

update60082
	"self new update60082"
	self withUpdateLog: '18481 Better #haltOnce: per haltOnce state, auto-enable 
	https://pharo.fogbugz.com/f/cases/18481

18332 ClassRefs menu items should be moved at the same level than analyze
	https://pharo.fogbugz.com/f/cases/18332

18478 "Instance variables defined in all subclasses" rule not clear
	https://pharo.fogbugz.com/f/cases/18478'.
	self loadTogether: self script60082 merge: false.
	self flushCaches.

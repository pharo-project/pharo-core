update40533
	"self new update40533"
	self withUpdateLog: '15039 Move Reflectivity related methods and classes to Reflectivity
	https://pharo.fogbugz.com/f/cases/15039

15037 When loading Slots classes initials are asked
	https://pharo.fogbugz.com/f/cases/15037'.
	self loadTogether: self script533 merge: false.
	self flushCaches.

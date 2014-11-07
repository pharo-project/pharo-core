update40359
	"self new update40359"
	self withUpdateLog: '14403 never use EventHandler but MorphicEventHandler (and migrate all existing instances)
	https://pharo.fogbugz.com/f/cases/14403

14348 Package Keys got lost
	https://pharo.fogbugz.com/f/cases/14348

14388 Can not inspect IRMethod
	https://pharo.fogbugz.com/f/cases/14388'.
	self loadTogether: self script359 merge: false.
	self flushCaches.

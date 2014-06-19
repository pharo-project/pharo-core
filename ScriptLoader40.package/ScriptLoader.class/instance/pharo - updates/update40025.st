update40025
	"self new update40025"
	self withUpdateLog: '13341 small simplification: #morphicLayerNumberWithin:
	https://pharo.fogbugz.com/f/cases/13341

13345 Fix some references to non-existing classes: MethodContext, MIMEType
	https://pharo.fogbugz.com/f/cases/13345
	
12859 colorChangedForSubmorph: unused
	https://pharo.fogbugz.com/f/cases/12859

'.
	self loadTogether: self script25 merge: false.
	self flushCaches.

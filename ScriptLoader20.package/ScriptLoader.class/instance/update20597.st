pharo - updates
update20597
	"self new update20597"
	self withUpdateLog: '10249 Backport 2.0: Red Light when all test are green
	https://pharo.fogbugz.com/f/cases/10249
	
10230 backport 2.0: 10229 Fix sender of #copyWithTempsFromMethodNode:
	https://pharo.fogbugz.com/f/cases/10230
	
10200 Date instances dayOfWeek wrong
	https://pharo.fogbugz.com/f/cases/10200
	
10179 backport 2.0: 10038 Wrong deprecated message
	https://pharo.fogbugz.com/f/cases/10179
	
	
'.
	self loadTogether: self script571 merge: false.
	self flushCaches.

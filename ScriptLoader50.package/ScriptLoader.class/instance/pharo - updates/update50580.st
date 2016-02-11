update50580
	"self new update50580"
	self withUpdateLog: '17113 Context menu in SyntaxErrorDebugger broken
	https://pharo.fogbugz.com/f/cases/17113

17558 Update Rubric: In Linux some shortcuts use alt, some others ctrl
	https://pharo.fogbugz.com/f/cases/17558

17561 Add a release test to test the presence of critical classes in startup list
	https://pharo.fogbugz.com/f/cases/17561'.
	self loadTogether: self script50580 merge: false.
	self loadConfiguration: 'Rubric' version: '2.7'.self flushCaches.

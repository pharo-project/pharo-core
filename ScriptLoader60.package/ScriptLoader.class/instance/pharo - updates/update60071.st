update60071
	"self new update60071"
	self withUpdateLog: '18440 ConfgurationOfGTDebugger needs update
	https://pharo.fogbugz.com/f/cases/18440

18355 Change refactoring label from Rename temporary to Rename temporary/parameter
	https://pharo.fogbugz.com/f/cases/18355'.
	self loadTogether: self script60071 merge: false.
	self loadConfiguration: 'GTDebugger' version: '2.9'.self flushCaches.

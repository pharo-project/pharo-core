update60232
	"self new update60232"
	self withUpdateLog: '18963 DANode>>#browseClass: sends unimplemented fullOnClass:
	https://pharo.fogbugz.com/f/cases/18963

19113 Problem with selection in rubric (select from line beginning)
	https://pharo.fogbugz.com/f/cases/19113

18594 Remove references to Smalltalk evaluate: from Fuel
	https://pharo.fogbugz.com/f/cases/18594'.
	self loadTogether: self script60232 merge: false.
	self loadConfiguration: 'DependencyAnalyser' version: '1.20'.self flushCaches.

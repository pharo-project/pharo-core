update50074
	"self new update50074"
	
(RPackageOrganizer default packages 
	detect: [ :each | each name beginsWith: 'a MC' ]
	ifNone: [  nil ])
	ifNotNil: [ :package | package unregister ].
ScriptLoader new unloadPackageNamed: 'ConfigurationOfRubric'.
	self withUpdateLog: '15600 New rubric configuration
	https://pharo.fogbugz.com/f/cases/15600'.
	self loadTogether: self script50074 merge: false.
	self loadConfiguration: 'Rubric' version: '1.2.15'.self flushCaches.

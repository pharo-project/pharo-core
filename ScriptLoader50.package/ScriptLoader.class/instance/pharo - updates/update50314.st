update50314
	"self new update50314"
	self withUpdateLog: '16524 Assignment is misspelled in RBAssignmentInIfTrueRule>>#rationale
	https://pharo.fogbugz.com/f/cases/16524

16515 Adding an instance variable to Model broken by QualityAssistant 
	https://pharo.fogbugz.com/f/cases/16515

16454 BlueInk block formatting 
	https://pharo.fogbugz.com/f/cases/16454

16521 Help topic for contributing to the catalog
	https://pharo.fogbugz.com/f/cases/16521'.
	self loadTogether: self script50314 merge: false.
	self loadConfiguration: 'QualityAssistant' version: 'v1.4.2'.self flushCaches.

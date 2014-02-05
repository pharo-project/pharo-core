update30743
	"self new update30743"
	self withUpdateLog: '12801 Class comments missing in AsmJIT package
	https://pharo.fogbugz.com/f/cases/12801

12805 Class comments missing in ClassOrganizer package
	https://pharo.fogbugz.com/f/cases/12805

12791 Failing test: #testLocalMethodsOfTheClassShouldNotBeRepeatedInItsTraits
	https://pharo.fogbugz.com/f/cases/12791

12795 Class comments missing for package System-FileRegistry
	https://pharo.fogbugz.com/f/cases/12795

12799 Class comments missing in Help package
	https://pharo.fogbugz.com/f/cases/12799

'.
	self loadTogether: self script396 merge: false.
	self flushCaches.

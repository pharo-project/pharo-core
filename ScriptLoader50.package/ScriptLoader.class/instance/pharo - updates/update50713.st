update50713
	"self new update50713"
	self withUpdateLog: '18062 Infinite cycle when saving a method with a pragma
	https://pharo.fogbugz.com/f/cases/18062

18058 fix icons in Versionner and sort dependencies
	https://pharo.fogbugz.com/f/cases/18058

18075 SHRBTextStyler workspace mode doesnt work
	https://pharo.fogbugz.com/f/cases/18075'.
	self loadTogether: self script50713 merge: false.
	self loadConfiguration: 'Versionner' version: '2.13.11'.self flushCaches.

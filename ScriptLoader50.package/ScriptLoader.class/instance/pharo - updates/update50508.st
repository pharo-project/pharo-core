update50508
	"self new update50508"
	self withUpdateLog: '17277 newSpecialObjectsArray should return a process list instead of a linked list at item 41
	https://pharo.fogbugz.com/f/cases/17277

17268 Spur Migration - #pointersTo not working 
	https://pharo.fogbugz.com/f/cases/17268

17271 Spur Migration - MethodFinderTest is relaying in the order of the returned selectors for the test.
	https://pharo.fogbugz.com/f/cases/17271

17272 Uncategorized spur-related methods should be classified
	https://pharo.fogbugz.com/f/cases/17272

'.
	self loadTogether: self script50508 merge: false.
	self flushCaches.
self cleanRepositories.

update30547
	"self new update30547"
	self withUpdateLog: '12070 Add lint rule for #shouldnt:raise: edge cases
	https://pharo.fogbugz.com/f/cases/12070
	
12068 DateTest >> #testNew is bogus with negative timezone offsets
	https://pharo.fogbugz.com/f/cases/12068
	
12069 In the SourceFiles global, only put objects that are polymorphic with SourceFileArray
	https://pharo.fogbugz.com/f/cases/12069'.
	self loadTogether: self script202 merge: false.
	self flushCaches.

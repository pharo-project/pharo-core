update30449
	"self new update30449"
	self withUpdateLog: '11777 Fix SpecTests
	https://pharo.fogbugz.com/f/cases/11777
	
11776 Fix Create action on #subclassResponsibility
	https://pharo.fogbugz.com/f/cases/11776'.
	self loadTogether: self script104 merge: false.
	self flushCaches.

update50196
	"self new update50196"
	self withUpdateLog: '16051 Incorrectly structured tab window can make VM spinlock
	https://pharo.fogbugz.com/f/cases/16051

16052 BooleanSlot: implement code generation
	https://pharo.fogbugz.com/f/cases/16052

16054 Update Rubric configuration 
	https://pharo.fogbugz.com/f/cases/16054'.
	self loadTogether: self script50196 merge: false.
	self loadConfiguration: 'Rubric' version: '1.16.2'.self flushCaches.

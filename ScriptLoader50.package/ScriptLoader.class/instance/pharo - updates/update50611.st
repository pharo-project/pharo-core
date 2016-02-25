update50611
	"self new update50611"
	self withUpdateLog: '17686 Add rules about Rubric method precedence
	https://pharo.fogbugz.com/f/cases/17686

17689 BoxedFloat Fix remaining Tests
	https://pharo.fogbugz.com/f/cases/17689

17685 Add rules to check if Float system classes are referenced
	https://pharo.fogbugz.com/f/cases/17685'.
	self loadTogether: self script50611 merge: false.
	self loadConfiguration: 'Rubric' version: '2.8'.self flushCaches.

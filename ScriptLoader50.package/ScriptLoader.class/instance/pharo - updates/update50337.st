update50337
	"self new update50337"
	self withUpdateLog: '16616 "Eliminate guarding clauses" critic is named wrong and maybe should be removed
	https://pharo.fogbugz.com/f/cases/16616

16624 SimpleBorder borderStyle should initialize its width to a number
	https://pharo.fogbugz.com/f/cases/16624

16622 Merge latest rubric fixes
	https://pharo.fogbugz.com/f/cases/16622'.
	self loadTogether: self script50337 merge: false.
	self loadConfiguration: 'Rubric' version: '1.18.7'.self flushCaches.

update60129
	"self new update60129"
	self withUpdateLog: '18651 fix #haltOnce reset
	https://pharo.fogbugz.com/f/cases/18651

18632 Virtual Machine parameters need to be documented
	https://pharo.fogbugz.com/f/cases/18632

18620 CompiledMethodTest testContainsHalt fails
	https://pharo.fogbugz.com/f/cases/18620

18652 RBDeadBlockRule: use #isUsed, not isLastStatementInBlock
	https://pharo.fogbugz.com/f/cases/18652'.
	self loadTogether: self script60129 merge: false.
	self flushCaches.

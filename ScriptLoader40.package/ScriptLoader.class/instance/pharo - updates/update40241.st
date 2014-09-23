update40241
	"self new update40241"
	self withUpdateLog: '14055 Fix some failing tests related to Code Critics (due to accidental #halt)
	https://pharo.fogbugz.com/f/cases/14055

13606 testSlotScopeParallelism is failing
	https://pharo.fogbugz.com/f/cases/13606'.
	self loadTogether: self script241 merge: false.
	self flushCaches.

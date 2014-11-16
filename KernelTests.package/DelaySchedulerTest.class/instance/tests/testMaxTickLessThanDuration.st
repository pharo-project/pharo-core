testMaxTickLessThanDuration
	"In #handleTimerEvent the maximum tick is hardcoded as 1000. Test when delay duration is less than this."
	| maxDuration testDuration scheduler1 nowTick nextTick |
	maxDuration := 1000.
	testDuration := 1234.
	scheduler1 := DelayScheduler new.
	scheduler1 schedule: (Delay forMilliseconds: testDuration).

	nowTick := 100.
	scheduler1 testCaseSupportSetActiveDelayStartTime: nowTick.
	nextTick := scheduler1 handleTimerEvent: nowTick.

	self assert: nextTick equals: nowTick + maxDuration.		
	self assert: scheduler1 testCaseSupportActiveDelay delayDuration equals: testDuration.
	
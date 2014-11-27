testMaxTickMoreThanDuration
	"In #handleTimerEvent the maximum tick is hardcoded as 1000. Test when delay duration is less than this."
	| testDuration scheduler1 nowTick nextTick |
	testDuration := 678.
	scheduler1 := DelayScheduler new.
	scheduler1 schedule: (Delay forMilliseconds: testDuration).

	nowTick := 100.
	scheduler1 testCaseSupportSetActiveDelayStartTime: nowTick.
	nextTick := scheduler1 handleTimerEvent: nowTick.

	self assert: nextTick equals: nowTick + testDuration.		
	self assert: scheduler1 testCaseSupportActiveDelay delayDuration equals: testDuration.
	
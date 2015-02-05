waitOtherwise: anErrorBlock
"	Schedule this Delay, then wait on its semaphore. The current process will be suspended for the amount of time specified when this Delay was created.

	Only the high priority timer event loop (TEL) signals /delaySempahore/.  If the TEL is not running, a delay will block forever (for example the UI will lock up). 
	
	/beingWaitedOn/ is only set to true from the TEL (via DelayScheduler>>scheduleDelay: and Delay>>timingPriorityWaitedOn:) so test this to determine if TEL is running.  Avoid waiting when the TEL is not running.
"

	self schedule.
	[	beingWaitedOn 
			ifTrue: [ delaySemaphore wait ] 
			ifFalse:[ anErrorBlock value ]
	]	ifCurtailed:[self unschedule].

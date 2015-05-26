waitOtherwise: anErrorBlock
	"	
	Schedule this Delay, then wait on its semaphore. The current process will be suspended 
	for the duration specified when this Delay was created.

   If the delay was not scheduled (e.g. if the high priority timer event loop is not running),
 	then delaySemaphore will never be signalled, so don't wait on it. The event loop may need 
	to be restarted thus... Delay restartTimerEventLoop.
   "

	self schedule 
		ifTrue: [ [delaySemaphore wait] ifCurtailed:[self unschedule] ]
		ifFalse: anErrorBlock.
	
testNestedSuspendAllWhile
	| announcement |
	announcer
		subscribe: GLMTestAnnouncement
		do: [ :ann | announcement := ann ].
	
	announcement := nil.
	announcer suspendAllWhile: [
		announcer suspendAllWhile: [ ].
		announcer announce: GLMTestAnnouncement ].
	self assert: announcement isNil
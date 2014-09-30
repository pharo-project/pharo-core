testSimpleNestedSuspendParticularAnnouncementWhile
	| announcement |
	announcer
		subscribe: GLMTestAnnouncement
		do: [ :ann | announcement := ann ].
	
	announcement := nil.
	announcer suspendAll: {GLMTestAnnouncement} while: [
		announcer suspendAll: {} while: [ ].
		announcer announce: GLMTestAnnouncement ].
	self assert: announcement isNil
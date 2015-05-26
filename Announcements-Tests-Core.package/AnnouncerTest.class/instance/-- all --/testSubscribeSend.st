testSubscribeSend
	| announcement instance |
	announcer
		subscribe: AnnouncementMockA
		send: #value:
		to: [ :ann | announcement := ann ].
		
	announcement := nil.
	instance := announcer announce: AnnouncementMockA.
	self assert: announcement = instance.
	
	announcement := nil.
	instance := announcer announce: AnnouncementMockB new.
	self assert: announcement isNil
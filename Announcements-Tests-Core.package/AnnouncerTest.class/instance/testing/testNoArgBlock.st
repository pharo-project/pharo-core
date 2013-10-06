testNoArgBlock
	"we are supposed to accept zero-argument blocks as actions "
	| announcement counter |
	counter := nil.

	self shouldnt: [	
		announcer
			subscribe: AnnouncementMockA 
			do: [ counter:= 1 ] ] raise: Exception.

	self shouldnt: [announcer announce: AnnouncementMockA new] raise: Exception.
	self assert:  counter =1
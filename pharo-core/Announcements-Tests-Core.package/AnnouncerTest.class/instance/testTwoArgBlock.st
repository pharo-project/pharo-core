testing
testTwoArgBlock
	"we are supposed to accept two-argument blocks as actions "
	| announcement flag |
	
	
	self shouldnt: [
		announcer
			subscribe: AnnouncementMockA 
			do: [:ann :announcer2 | flag := announcer2 == announcer ]
		] raise: Exception.

	self shouldnt: [announcer announce: AnnouncementMockA new] raise: Exception.
	self assert:  flag
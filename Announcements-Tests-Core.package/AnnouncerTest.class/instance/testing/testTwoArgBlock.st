testTwoArgBlock
	"we are supposed to accept two-argument blocks as actions "

	| announcement flag |
	announcer subscribe: AnnouncementMockA do: [ :ann :announcer2 | flag := announcer2 == announcer ].
	announcer announce: AnnouncementMockA new.
	self assert: flag
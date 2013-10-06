testNoArgBlock
	"we are supposed to accept zero-argument blocks as actions "

	| announcement counter |
	counter := nil.
	announcer subscribe: AnnouncementMockA do: [ counter := 1 ].
	announcer announce: AnnouncementMockA new.
	self assert: counter = 1
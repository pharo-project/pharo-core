testing
testIncludeOnlyOnce
	|set|
	set := AnnouncementMockA, AnnouncementMockB, AnnouncementMockA.
	self assert: set size = 2
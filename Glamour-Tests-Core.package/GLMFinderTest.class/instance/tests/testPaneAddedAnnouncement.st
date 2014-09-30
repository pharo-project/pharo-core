testPaneAddedAnnouncement
	| browser count |
	count := 0.
	browser := GLMFinder new.
	browser on: GLMPaneAdded do: [ :ann | count := count + 1 ].
	browser startOn: #a.
	self assert: count equals: 1.
	(browser panes first port: #selection) value: #b.
	self assert: count equals: 2
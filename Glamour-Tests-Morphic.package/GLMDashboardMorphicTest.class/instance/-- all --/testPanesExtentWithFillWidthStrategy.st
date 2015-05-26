testPanesExtentWithFillWidthStrategy
	| dashboard mainCell firstColumn secondColumn |
	dashboard := GLMDashboard.
	dashboard := GLMDashboard new.
	dashboard fillWidthStrategy.
	dashboard addPaneNamed: #one extent: 20 @ 45.
	dashboard addPaneNamed: #two extent: 50 @ 10.
	dashboard addPaneNamed: #three extent: 20 @ 40.
	dashboard addPaneNamed: #four.
	window := dashboard openOn: #start.
	mainCell := window submorphs last submorphs last submorphs last.
	firstColumn := mainCell submorphs first.
	secondColumn := mainCell submorphs second.
	self deny: firstColumn submorphs first extent = (20 @ 45).
	self assert: firstColumn submorphs first extent y equals: 45.
	self deny: firstColumn submorphs second extent = (50 @ 10).
	self assert: firstColumn submorphs second extent y equals: 10.
	self deny: secondColumn submorphs first extent = (20 @ 40).
	self assert: secondColumn submorphs first extent y equals: 40	"self deny: secondColumn submorphs second extent = dashboard defaultPaneExtent."	"self assert: secondColumn submorphs second extent  y = dashboard defaultPaneExtent y  "
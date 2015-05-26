testPanesExtent
	| dashboard mainCell firstColumn secondColumn |
	dashboard := GLMDashboard.
	dashboard := GLMDashboard new.
	dashboard rigidStrategy.
	dashboard addPaneNamed: #one extent: 20 @ 45.
	dashboard addPaneNamed: #two extent: 50 @ 10.
	dashboard addPaneNamed: #three extent: 20 @ 40.
	dashboard addPaneNamed: #four.
	window := dashboard openOn: #start.
	mainCell := window submorphs last submorphs last submorphs last.
	firstColumn := mainCell submorphs first.
	secondColumn := mainCell submorphs second.
	self assert: firstColumn submorphs first extent equals: 20 @ 45.
	self assert: firstColumn submorphs second extent equals: 50 @ 10.
	self assert: secondColumn submorphs first extent equals: 20 @ 40	"self assert: secondColumn submorphs second extent = dashboard defaultPaneExtent "
testPanesAndExtents
	| layout |
	layout := GLMDashboard new.
	layout rigidStrategy.
	layout addPaneNamed: #one extent: 20 @ 45.
	layout addPaneNamed: #two extent: 50 @ 10.
	layout addPaneNamed: #three extent: 20 @ 40.
	layout addPaneNamed: #four.
	self assert: layout panes size equals: 4.
	self assert: (layout extentOfPaneNamed: #one) equals: 20 @ 45.
	self assert: (layout extentOfPaneNamed: #two) equals: 50 @ 10.
	self assert: (layout extentOfPaneNamed: #three) equals: 20 @ 40	"self assert: (layout extentOfPaneNamed: #four) =  layout defaultPaneExtent. "
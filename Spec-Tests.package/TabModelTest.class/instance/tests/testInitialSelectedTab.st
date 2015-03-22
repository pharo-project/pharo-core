testInitialSelectedTab
	"issue 15145"

	| manager tabModel |
	manager := TabManagerModel new.
	tabModel := self redMorphTab.
	self assert: manager selectedTab equals: nil.
	manager addTab: tabModel.
	self assert: manager selectedTab equals: tabModel.
	manager addTab: self redMorphTab.
	self assert: manager selectedTab equals: tabModel
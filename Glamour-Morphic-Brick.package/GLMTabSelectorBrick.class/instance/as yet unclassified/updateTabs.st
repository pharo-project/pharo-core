updateTabs
	"Update the submorphs based on visible tabs."

	|selectedTab|
	self removeAllBricks.
	self tabs ifEmpty: [^self].
	selectedTab := self selectedTab.
	self tabs do: [:t |
		t selected: (t == selectedTab).
		t layoutProperties horizontalPercent: 100 / self tabs size ].
	self
		addAllBricks: self tabs;
		adoptPaneColor.
	
	self doLayout.
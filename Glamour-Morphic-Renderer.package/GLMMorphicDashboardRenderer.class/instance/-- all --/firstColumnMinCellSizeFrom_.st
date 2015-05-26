firstColumnMinCellSizeFrom: aGLMDashboard

	|tmpMinVerticalSize tmpMinHorizontalSize|
	tmpMinHorizontalSize := (aGLMDashboard extentOfPaneNamed: (aGLMDashboard panes anyOne name)) x  .
	tmpMinVerticalSize :=  (aGLMDashboard extentOfPaneNamed: (aGLMDashboard panes anyOne name)) y.
	(self firstColumnPanesFrom: aGLMDashboard) do: [:aGLMPane |
		|tmpPaneExtent|
		tmpPaneExtent := aGLMDashboard extentOfPaneNamed: aGLMPane name.  
		tmpPaneExtent x < tmpMinHorizontalSize ifTrue: [tmpMinHorizontalSize := tmpPaneExtent x].
		tmpPaneExtent y < tmpMinVerticalSize ifTrue: [tmpMinVerticalSize := tmpPaneExtent y].
		].   
	^ tmpMinHorizontalSize @ tmpMinVerticalSize 
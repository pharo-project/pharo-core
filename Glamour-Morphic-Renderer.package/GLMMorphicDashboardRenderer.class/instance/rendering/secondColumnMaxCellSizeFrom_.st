secondColumnMaxCellSizeFrom: aGLMDashboard

	|tmpMaxVerticalSize tmpMaxHorizontalSize|
	tmpMaxHorizontalSize := 0.
	tmpMaxVerticalSize := 0.
	(self secondColumnPanesFrom: aGLMDashboard) do: [:aGLMPane |
		|tmpPaneExtent|
		tmpPaneExtent := aGLMDashboard extentOfPaneNamed: aGLMPane name.  
		tmpPaneExtent x > tmpMaxHorizontalSize ifTrue: [tmpMaxHorizontalSize := tmpPaneExtent x].
		tmpPaneExtent y > tmpMaxVerticalSize ifTrue: [tmpMaxVerticalSize := tmpPaneExtent y].
		].   
	^ tmpMaxHorizontalSize @ tmpMaxVerticalSize 
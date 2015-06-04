render: aBrowser
	| container firstColumnContainer secondColumnContainer scrollPane panesMidSize |
	firstColumnContainer := PanelMorph new.
	secondColumnContainer := PanelMorph new.
	container := PanelMorph new.
	aBrowser defaultPaneExtent: #glamourOptimalExtent.
	firstColumnContainer
		fillStyle: Color transparent;
		fillStyle: Color transparent;
		changeTableLayout;
		cellPositioning: #topRight;
		layoutInset: 2;
		cellInset: 2.	"maxCellSize: (self firstColumnMaxCellSizeFrom: aBrowser) ;"	"minCellSize: 20@20 ;"
	secondColumnContainer
		fillStyle: Color transparent;
		changeTableLayout;
		cellPositioning: #topLeft;
		layoutInset: 2;
		cellInset: 2.	"maxCellSize: (self secondColumnMaxCellSizeFrom: aBrowser) ;"	"minCellSize: (self secondColumnMaxCellSizeFrom: aBrowser);"
	container
		fillStyle: Color transparent;
		changeTableLayout;
		extent: 200 @ 200;
		layoutInset: 2;
		cellPositioning: #topLeft;
		listDirection: #leftToRight;
		cellInset: 2.	"maxCellSize: 400@200;
		minCellSize: 400@150;"
	aBrowser extentStrategy initializeContainer: container.
	aBrowser extentStrategy initializeFirstColumn: firstColumnContainer.
	aBrowser extentStrategy initializeSecondColumn: secondColumnContainer.
	scrollPane := GeneralScrollPane new.
	scrollPane
		changeScrollerTableLayout;
		scrollTarget: container.
	(self firstColumnPanesFrom: aBrowser)
		reverseDo: [ :aGLMPane | self renderPane: aGLMPane inUI: firstColumnContainer from: aBrowser ].
	(self secondColumnPanesFrom: aBrowser)
		reverseDo: [ :aGLMPane | self renderPane: aGLMPane inUI: secondColumnContainer from: aBrowser ].
	container addMorph: secondColumnContainer.
	container addMorph: firstColumnContainer.
	aBrowser when: GLMBrowserClosed send: #actOnBrowserClosed: to: self.
	^ scrollPane
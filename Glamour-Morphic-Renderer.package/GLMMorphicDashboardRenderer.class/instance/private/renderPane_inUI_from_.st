renderPane: aPane inUI: aMorph from: aGLMDashboard

	| pane totalSpans currentSpanPosition currentOffset tmpExtent|
	pane := self renderObject: (aPane). 
	"pane
		hResizing: #rigid;
		vResizing: #rigid."
	
	
	"self haltIf: [aPane name = #dashboard]."
	"pane extent: (aGLMDashboard extentOfPaneNamed: aPane name). "
	aGLMDashboard extentStrategy initializePane: pane.
	pane extent: ((aGLMDashboard extentOfPaneNamed: aPane name) glamourValue: pane). 
	"self haltIf: [pane submorphs contains: [:a | a isKindOf: GeneralScrollPane]]."
	aMorph addMorph: pane.

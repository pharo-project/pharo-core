extentOfPaneNamed: aSymbol

	^ self panesExtents at: aSymbol ifAbsent: [
		"default extent for a pane"
		"#glamourOptimalExtent"
		self defaultPaneExtent
		]
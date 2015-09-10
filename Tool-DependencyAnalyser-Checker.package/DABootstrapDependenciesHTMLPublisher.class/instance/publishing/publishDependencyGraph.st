publishDependencyGraph
	graphFileReference writeStreamDo: [ :htmlStream |
		D3Graph new 
			generateHTML: htmlStream 
			andData: graphDataFileReference
			fromReport: report ].
	self publishDependencyGraphButton
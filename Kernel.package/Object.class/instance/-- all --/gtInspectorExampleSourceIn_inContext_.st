gtInspectorExampleSourceIn: composite inContext: aGTInspector
	<gtInspectorPresentationOrder: 900>
	<gtInspectorTag: #examples>
	
	| previousRawSelection |
	(aGTInspector panes size > 1) 
		ifFalse: [ ^ self ].	
	previousRawSelection := (aGTInspector panes reversed second port: #rawSelection) value.
	((previousRawSelection isGTExample) "and: [
		aGTInspector first lastActivePresentation pane ~= aGTInspector panes reversed second ]")
			ifTrue: [ 
				(previousRawSelection gtDisplaySourceIn: composite) 
					title: 'E.g. source' ]
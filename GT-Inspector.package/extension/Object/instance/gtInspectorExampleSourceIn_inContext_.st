gtInspectorExampleSourceIn: composite inContext: aGTInspector
	<gtInspectorPresentationOrder: 900>
	
	| previousRawSelection |
	(aGTInspector panes size > 1) 
		ifFalse: [ ^ self ].	
	previousRawSelection := (aGTInspector panes reversed second port: #rawSelection) value.
	(previousRawSelection isKindOf: GTExample)
			ifTrue: [ 
				(previousRawSelection methodReference gtInspectorSourceIn: composite) 
					title: 'E.g. source' ]
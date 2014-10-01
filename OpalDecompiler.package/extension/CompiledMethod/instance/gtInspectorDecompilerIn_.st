gtInspectorDecompilerIn: composite
	<gtInspectorPresentationOrder: 40> 
	^ composite smalltalkCode 
		title: 'Decompiled';
		smalltalkClass: [ self methodClass ];
		display: [ self codeForNoSource ].
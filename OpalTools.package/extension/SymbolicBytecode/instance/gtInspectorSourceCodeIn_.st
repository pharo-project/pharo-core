gtInspectorSourceCodeIn: composite
	<gtInspectorPresentationOrder: 30> 

	^ composite smalltalkCode 
		title: 'Source';
		display: [ self method sourceCode ];
		smalltalkClass: [ self method methodClass ]; 
		initialize: [ :presentation | 
			presentation selectionInterval: self sourceInterval ];
		act: [ self method compiledMethod browse ] icon: GLMUIThemeExtraIcons glamorousBrowse entitled: 'Browse'
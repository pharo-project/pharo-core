gtInspectorSourceCodeIn: composite
	<gtInspectorPresentationOrder: 30> 

	^ composite smalltalkCode 
		title: 'Source code';
		display: [ self source ];
		smalltalkClass: [ self parents first methodClass ]; 
		initialize: [ :presentation | 
			presentation selectionInterval: self sourceInterval ];
		act: [ self methodNode method compiledMethod browse ] icon: GLMUIThemeExtraIcons glamorousBrowse entitled: 'Browse'
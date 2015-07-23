gtInspectorSourceCodeIn: composite
	<gtInspectorPresentationOrder: 0> 

	^ composite smalltalkCode 
		title: 'Source code';
		display: [ target definition ];
		smalltalkClass: [ 
			target isCompiledMethod ifTrue: [ target methodClass ] ]; 
		initialize: [ :presentation | 
			presentation selectionInterval: selection ];
		act: [ target browse ] icon: GLMUIThemeExtraIcons glamorousBrowse entitled: 'Browse'
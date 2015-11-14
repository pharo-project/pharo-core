gtInspectorSourceCodeIn: composite
	<gtInspectorPresentationOrder: 0>

	^ composite smalltalkCode
		title: 'Source code';
		display: [ target definition ];
		smalltalkClass: [
			target isCompiledMethod ifTrue: [ target methodClass ] ];
		initialize: [ :presentation |
			self providesSelection ifTrue: [ presentation selectionInterval: self selection ] ];
		act: [ target browse ] icon: GLMUIThemeExtraIcons glamorousBrowse entitled: 'Browse'
gtInspectorSourceIn: composite
	<gtInspectorPresentationOrder: 30> 
	^ composite smalltalkCode 
		title: 'Source';
		smalltalkClass: [ self methodClass ];
		display: [ self getSource ];
		act: [ self browse ] icon: GLMUIThemeExtraIcons glamorousBrowse entitled: 'Browse'
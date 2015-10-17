gtInspectorSourceIn: composite
	<gtInspectorPresentationOrder: 30> 
	^ composite pharoMethod 
		title: 'Source';
		smalltalkClass: [ self methodClass ];
		display: [ self getSource ];
		act: [ self browse ] icon: GLMUIThemeExtraIcons glamorousBrowse entitled: 'Browse'
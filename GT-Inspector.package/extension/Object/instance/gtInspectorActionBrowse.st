gtInspectorActionBrowse
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ self browse ];
		icon: GLMUIThemeExtraIcons glamorousBrowse;
		title: 'Browse'
gtInspectorActionOpenHelpBrowser
	<gtInspectorAction>
	
	^ GLMGenericAction new
		action: [ HelpBrowser openOn: self ];
		icon: (HelpIcons iconNamed:#bookIcon);
		title: 'Browse'
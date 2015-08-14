gtInspectorActionOpenHelpBrowser
	<gtInspectorAction>
	
	^ GLMGenericAction new
		action: [ HelpBrowser openOn: self ];
		icon: Smalltalk ui icons bookIcon;
		title: 'Browse'
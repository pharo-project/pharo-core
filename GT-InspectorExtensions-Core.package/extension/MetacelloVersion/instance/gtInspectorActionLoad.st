gtInspectorActionLoad
	<gtInspectorAction>
	
	^ GLMGenericAction new
		action: [ self load ];
		icon: Smalltalk ui icons smallLoadProject;
		title: 'Load'
gtInspectorActionEvaluateResultAndGo
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ :p | p selection: self result returnValue ];
		icon: Smalltalk ui icons glamorousRight;
		title: 'Evaluate result and go'
gtInspectorActionEvaluateResultAndGo
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ :p | p selection: self result ];
		icon: Smalltalk ui icons glamorousRight;
		title: 'Evaluate result and go'
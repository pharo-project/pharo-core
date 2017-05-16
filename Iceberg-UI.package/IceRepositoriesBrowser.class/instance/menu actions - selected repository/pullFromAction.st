pullFromAction
	^ GLMGenericAction new
		selectionAction: #pullFrom;
		selectionCondition: #isOperative;
		showTitle: 'Pull from...'; 
		yourself

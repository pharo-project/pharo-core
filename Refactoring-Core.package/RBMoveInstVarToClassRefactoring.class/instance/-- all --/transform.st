transform
	| brokenSenders |
	class addInstanceVariable: variableName asString.
	oldClass removeInstVarNamed: variableName asString.
	brokenSenders := self collectSendersOfInstVar.
	brokenSenders ifNotEmpty: [ 
		Smalltalk tools messageList
			browse: brokenSenders 
			title: 'Broken methods' 
			autoSelect: brokenSenders first selector] 
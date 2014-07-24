transform
	| brokenSenders |
	class addInstanceVariable: variableName asString.
	oldClass removeInstVarNamed: variableName asString.
	brokenSenders := self collectSendersOfInstVar.
	brokenSenders
		ifNotEmpty: [ (MessageBrowser on: brokenSenders named: 'Broken methods' autoSelect: brokenSenders first selector) open ]
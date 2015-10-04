condition: aCondition arguments: anArray
	condition:= aCondition.
	conditionArguments := anArray.
	self optionInlineCondition ifTrue: [self invalidate].

	

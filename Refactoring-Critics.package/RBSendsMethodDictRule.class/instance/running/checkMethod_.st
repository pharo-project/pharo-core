checkMethod: aContext
	({Behavior. ClassDescription. Class.TBehavior . TClassDescription . TApplyingOnClassSide } includes: aContext selectedClass)
		ifTrue: [ ^ self ].
	(aContext messages includes: #methodDict)
		ifTrue: [ 
			result addClass: aContext selectedClass selector: aContext selector.
			result addSearchString: 'methodDict' ]
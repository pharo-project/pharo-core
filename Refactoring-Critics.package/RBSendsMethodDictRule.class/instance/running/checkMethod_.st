checkMethod: aMethod
	({Behavior. ClassDescription. Class.TBehavior . TClassDescription . TApplyingOnClassSide } includes: aMethod methodClass)
		ifTrue: [ ^ self ].
	(aMethod messages includes: #methodDict)
		ifTrue: [ 
			result
				addMethod: aMethod;
				addSearchString: 'methodDict' ]
checkMethod: aContext 
	| definer superMethod |
	(aContext selectedClass isMeta not and: [ self superMessages includes: aContext selector ]) ifTrue: 
		[ definer := aContext selectedClass superclass ifNotNil: [ :sc | sc whichClassIncludesSelector: aContext selector ].
		definer ifNotNil: 
			[ "super defines same method"
			(aContext superMessages includes: aContext selector) ifFalse: 
				[ "but I don't call it"
				superMethod := definer 
					compiledMethodAt: aContext selector
					ifAbsent: [  ].
				(superMethod isReturnSelf or: [ superMethod sendsSelector: #subclassResponsibility ]) ifFalse: 
					[ result 
						addClass: aContext selectedClass
						selector: aContext selector ] ] ] ]
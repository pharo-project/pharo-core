checkMethod: aMethod
	aMethod numArgs = 0
		ifFalse: [ ^ self ].
	(aMethod methodClass organization categoryOfElement: aMethod selector) = #accessing
		ifFalse: [ ^ self ].
	aMethod parseTree
		nodesDo: [ :each | 
			each isReturn
				ifTrue: [ ^ self ] ].
	result addMethod: aMethod
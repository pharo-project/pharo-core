selectedMethod
	^selectorToUse 
		ifNotNil: [self selectedClass methodDict 
					at: selectorToUse 
					ifAbsent: [self selectedClass class methodDict at: selectorToUse]]
 		ifNil:[nil].
stopWithoutParentheses
	^arguments isEmpty 
		ifTrue: [selectorParts first stop]
		ifFalse: [arguments last stop]
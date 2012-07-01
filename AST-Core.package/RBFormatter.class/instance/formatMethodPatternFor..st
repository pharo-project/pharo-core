private-formatting
formatMethodPatternFor: aMethodNode 
	| selectorParts arguments |
	selectorParts := aMethodNode selectorParts.
	arguments := aMethodNode arguments.
	arguments isEmpty 
		ifTrue: [codeStream nextPutAll: selectorParts first value]
		ifFalse: 
			[selectorParts with: arguments
				do: 
					[:selector :arg | 
					codeStream
						nextPutAll: selector value;
						nextPut: $ .
					self visitArgument: arg.
					codeStream nextPut: $ ]]
printing
printWithClosureAnalysisOn: aStream indent: level

	key isVariableBinding
		ifTrue:
			[key key isNil
				ifTrue:
					[aStream nextPutAll: '###'; nextPutAll: key value soleInstance name]
				ifFalse:
					[aStream nextPutAll: '##'; nextPutAll: key key]]
		ifFalse:
			[key storeOn: aStream]
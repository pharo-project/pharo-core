removeKey: aKey ifAbsent: aBlock
	| index item value |
	index := self computeIndex: aKey.
	item := self table at: index.	 
	^item isNil
		ifTrue: [ aBlock value ]
		ifFalse: [ 
			(self is: item key sameAs: aKey)
				ifTrue: [
					self table at: index put: item next.
					value := item value.
					item setAsNil.
					self decrementSize.
					value ]
				ifFalse: [
					self removeItemWithKey: aKey from: item ifAbsent: aBlock ] ].
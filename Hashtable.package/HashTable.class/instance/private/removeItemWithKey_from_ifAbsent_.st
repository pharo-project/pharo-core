removeItemWithKey: aKey from: anItem ifAbsent: aBlock
	| nextItem value |	
	nextItem := anItem next.
	^nextItem isNil
		ifTrue: [ aBlock value ]
		ifFalse: [ 
			(self is: nextItem key sameAs: aKey)
				ifTrue: [
					anItem next: nextItem next.
					value := nextItem value.
					self decrementSize.
					nextItem setAsNil.
					value ]
				ifFalse: [
					self removeItemWithKey: aKey from: nextItem ifAbsent: aBlock ] ].
	
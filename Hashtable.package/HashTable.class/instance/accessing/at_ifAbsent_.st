at: aKey ifAbsent: aBlock
	| index item |
	index := self computeIndex: aKey.
	item := self itemFor: aKey atIndex: index.
	^ item isNil
		ifTrue: [ aBlock value ]
		ifFalse: [ item value ].
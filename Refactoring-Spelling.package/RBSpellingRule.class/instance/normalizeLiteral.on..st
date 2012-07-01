normalization
normalizeLiteral: aLiteral on: aStream
	aLiteral isSymbol
		ifTrue: [ ^ aStream nextPutAll: (self normalizeSelector: aLiteral) ].
	aLiteral isString
		ifTrue: [ ^ aStream nextPutAll: aLiteral ].
	aLiteral isCharacter
		ifTrue: [ ^ aStream nextPut: aLiteral ].
	aLiteral isCollection ifTrue: [
		^ aLiteral 
			do: [ :each | self normalizeLiteral: each on: aStream ]
			separatedBy: [ aStream nextPut: $ ] ].
	aStream print: aLiteral
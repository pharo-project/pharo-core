private
add: aLiteral to: aCollection
	aLiteral isString
		ifTrue: [ aCollection add: aLiteral ]
		ifFalse: [ 
			aLiteral isArray
				ifTrue: [ aLiteral do: [ :each | self add: each to: aCollection ] ] ].
	^ aCollection
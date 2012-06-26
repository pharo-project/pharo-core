initialize-release
protocols: aCollection
	protocols := aCollection isString
		ifTrue: [ Array with: aCollection ]
		ifFalse: [ aCollection ].
	protocols isNil
		ifTrue: [ protocols := #(accessing) ]
printing
colorString: aColor

	aColor ifNil: [ ^'nil' ].
	^aColor name
		ifNil: [ aColor storeString ]
		ifNotNil: [ :colorName | 'Color ', colorName ]
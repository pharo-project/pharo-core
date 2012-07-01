as yet unclassified
storeEditedGlyphsOn: aStream

	
	NoFontTable do: [:i | | n |
		n := strikeFont name.
		(n beginsWith: 'NewYork') ifTrue: [n := 'NewYork'].
		aStream nextPutAll: '((StrikeFont familyName: ''', n, ''' size: ',
			strikeFont height asString, ')'.
		aStream nextPutAll: ' characterFormAt: '.
		aStream nextPutAll: '(Character value: ', i asString, ')'.
		aStream nextPutAll: ' put: '.
		(strikeFont characterFormAt: (Character value: i)) storeOn: aStream base: 2.
		aStream nextPutAll: ')!'.
		aStream nextPut: Character cr.
		aStream nextPut: Character cr.
	].

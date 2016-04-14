repeat: aNumber

	"returns a new string concatenated by itself repeated n times
		'abc' repeat: 3. 'abcabcabc'
	"

	aNumber < 1 ifTrue: [ self error: 'aNumber cannot be less than 1' ].
	
	^ self species 
		new: self size * aNumber 
		streamContents: [ :stringStream |
			1 to: aNumber do: [ :idx | stringStream nextPutAll: self ].
		]
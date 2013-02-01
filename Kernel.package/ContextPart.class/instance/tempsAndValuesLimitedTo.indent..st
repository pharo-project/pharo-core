debugger access
tempsAndValuesLimitedTo: sizeLimit indent: indent
	"Return a string of the temporary variabls and their current values"

	| aStream |
	aStream := (String new: 100) writeStream.
	self tempNames doWithIndex: [:title :index |
		indent timesRepeat: [aStream tab].
		aStream nextPutAll: title; nextPut: $:; space; tab.
		aStream nextPutAll: 
			((self tempAt: index) printStringLimitedTo: (sizeLimit -3 -title size max: 1)).
		aStream cr].
	^aStream contents
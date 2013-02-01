private
buildArrayString: aCollection
	
	^ String streamContents: [:stream | 
		stream << '#('.
		aCollection do: [:each |  
			stream  nextPutAll: '#('.
			stream nextPutAll: each first printString.
			stream  nextPutAll: ' '.
			stream nextPutAll: (each at: 2) asSymbol  printString.
			(each size = 3) ifTrue: [
				stream  nextPutAll: ' '.
				stream nextPutAll: (each at: 3) printString] .
			stream  nextPutAll: ') '.].
		stream << ')']
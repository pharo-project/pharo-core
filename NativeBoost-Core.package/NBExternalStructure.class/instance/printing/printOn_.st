printOn: aStream 
	"Append to the argument, aStream, the names and values of all the record's variables."

	Printing == true ifTrue: [ 
		"since we use field accessors for printing values,
		debugging the code with not-yet nativised accessors leads to infinite loop"
		^ aStream nextPutAll: self class name; nextPutAll: '(...)'.	
		].
	
	Printing := true.
	[ 
		aStream nextPutAll: self class name; nextPutAll: ' ( '; cr.
		self class fields namesInDeclarationOrder do: [ :field |
			aStream nextPutAll: field; nextPut: $:; space; tab.
				(self perform: field ) printOn: aStream.
				] separatedBy: [ aStream cr ].
		aStream cr; nextPut: $). ]
	ensure: [	Printing := false ].
	
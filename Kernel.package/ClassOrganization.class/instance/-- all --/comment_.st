comment: aString
	"Store the comment, aString, associated with the object that refers to the 
	receiver."

	comment := (aString isKindOf: RemoteString)
		ifTrue: [ aString ]
		ifFalse: [ 
			aString isEmptyOrNil
				ifTrue: [ nil ]
				ifFalse: [ RemoteString newString: aString onFileNumber: 2 ] ]	"Later add priorSource and date and initials?"
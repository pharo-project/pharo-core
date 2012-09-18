accessing
comment: aString 
	"Store the comment, aString, associated with the object that refers to the 
	receiver."

	(aString isKindOf: RemoteString) 
		ifTrue: [ comment := aString]
		ifFalse: [aString isEmptyOrNil
			ifTrue: [ comment := nil]
			ifFalse: [
				comment := RemoteString newString: aString onFileNumber: 2]]
				"Later add priorSource and date and initials?"
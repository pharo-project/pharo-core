accessing
classComment: aString 
	"Store the comment, aString, associated with the object that refers to the 
	receiver."

	(aString isKindOf: RemoteString) 
		ifTrue: [classComment := aString]
		ifFalse: [aString isEmptyOrNil
			ifTrue: [classComment := nil]
			ifFalse: [
				self error: 'use aClass classComment:'.
				classComment := RemoteString newString: aString onFileNumber: 2]]
				"Later add priorSource and date and initials?"
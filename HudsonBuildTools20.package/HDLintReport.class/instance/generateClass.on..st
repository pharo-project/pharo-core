generating
generateClass: aClass on: aStream
	| sourceStream sourceName |
	sourceStream := WriteStream on: String new.
	sourceName := environment name , '-' , aClass name , '.st'.
	aStream tab; nextPutAll: '<file name="'; nextPutAll: (self encode: sourceName); nextPutAll: '">'; nextPut: Character lf.
	self generateClass: aClass source: sourceStream on: aStream.
	self generateClass: aClass class source: sourceStream on: aStream.
	aStream tab; nextPutAll: '</file>'; nextPut: Character lf.
	FileDirectory default 
		forceNewFileNamed: sourceName
		do: [ :stream | stream nextPutAll: sourceStream contents ]
instance creation
on: aCollection encoding: encodingName 
	| aTextConverter |
	encodingName isNil
		ifTrue: [aTextConverter := TextConverter default]
		ifFalse: [aTextConverter := TextConverter newForEncoding: encodingName].
	^ (self on: aCollection)
		converter: aTextConverter
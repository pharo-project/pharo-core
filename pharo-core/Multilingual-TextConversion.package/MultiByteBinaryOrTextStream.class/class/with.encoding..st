instance creation
with: aCollection encoding: encodingName 
	| aTextConverter |
	encodingName isNil
		ifTrue: [aTextConverter := TextConverter default]
		ifFalse: [aTextConverter := TextConverter newForEncoding: encodingName].
	^ (self with: aCollection)
		converter: aTextConverter
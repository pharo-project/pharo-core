printOn: aStream
	| label vs |
	self blessing ~~ #broken
		ifTrue: [ 
			(vs := self versionStatus) == #somethingLoaded
				ifTrue: [ aStream nextPutAll: '<>' ].
			vs == #loadedMatchConstraints
				ifTrue: [ aStream nextPutAll: '>=' ].
			vs == #loadedToSpec
				ifTrue: [ aStream nextPut: $~ ] ].
	self versionNumber printOn: aStream.
	self spec ~~ nil
		ifTrue: [ 
			(label := self spec projectLabel) isEmpty
				ifFalse: [ aStream nextPutAll: ' [' , label , ']' ] ]
readStreamAtFileIndex: index atPosition: position ifPresent: presentBlock ifAbsent: absentBlock

	| stream |
	stream := self fileAt: index.
	stream ifNil: [ ^ absentBlock value ].	"sources file not available"	

	"file does not exist happens in secure mode"
	stream := [ stream readOnlyCopy ]
		on: FileDoesNotExistException
		do: [ ^ absentBlock value ].

	position > stream size ifTrue: [ ^ absentBlock value ].
	stream position: position.
	
	^ [ presentBlock value: stream ]
		ensure: [ stream close ]
localProcessReadStreamAtFileIndex: index atPosition: position ifPresent: presentBlock ifAbsent: absentBlock

	| stream |
	stream := self localProcessReadOnlyCopy at: index.
	stream ifNil: [ ^ absentBlock value ].	"sources file not available"	

	position > stream size ifTrue: [ ^ absentBlock value ].
	stream position: position.
	
	^ presentBlock value: stream
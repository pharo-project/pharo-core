localProcessReadStreamAtFileIndex: index atPosition: position ifPresent: presentBlock ifAbsent: absentBlock

	| stream |
	stream := self localProcessReadOnlyCopy fileAt: index.
	stream ifNil: [ ^ absentBlock value ].	"sources file not available"	

	position > stream size ifTrue: [ ^ absentBlock value ].
	stream position: position.
	
	^ presentBlock value: stream
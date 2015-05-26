outputDirectory
	outputDirectory ifNotNil: [ ^ outputDirectory ].
	
	outputDirectory := (self hasOption: 'output')
		ifTrue: [ self optionAt: 'output' ]
		ifFalse: [ 'export' ].
		
	^ outputDirectory := outputDirectory asFileReference.
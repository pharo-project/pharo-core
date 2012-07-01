decoding
globalClassNamed: className

	^ Smalltalk globals 
		at: className
		ifAbsent: [ FLClassNotFound signalWithName: className ]
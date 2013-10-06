activate
	activeTranscript 
		ifNil: [ ThreadSafeTranscript install ]
		ifNotNil: [ Transcript := activeTranscript ].
	SystemProgressMorph enable.
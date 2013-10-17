visitSequence: anIRSequence
	anIRSequence do: [ :instruction | 
		instruction accept: self ].
	^ anIRSequence
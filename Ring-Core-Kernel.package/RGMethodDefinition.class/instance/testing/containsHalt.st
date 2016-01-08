containsHalt
	
	^ self literals includesAnyOf: #(halt halt: halt:onCount: haltIf: haltIfNil haltOnCount: haltOnce)
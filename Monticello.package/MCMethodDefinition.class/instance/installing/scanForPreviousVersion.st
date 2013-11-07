scanForPreviousVersion
	^ SourceFiles
		changeRecordsFor: self asRingDefinition
		detect: [ :protocol | 
			protocol ~= category ]
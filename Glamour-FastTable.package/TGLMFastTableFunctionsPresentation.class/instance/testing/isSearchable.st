isSearchable
	^ self parameters at: 'isSearchable' ifAbsent: [ false ]
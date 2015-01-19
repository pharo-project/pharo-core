valueOfParameter: aSymbol ifAbsent: aBlock 

	^ self parameters at: aSymbol ifAbsent: [^ aBlock value]
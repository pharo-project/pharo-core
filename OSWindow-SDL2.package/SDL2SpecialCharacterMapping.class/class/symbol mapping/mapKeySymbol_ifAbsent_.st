mapKeySymbol: keySym ifAbsent: aBlock
	^( Mapping at: keySym ifAbsent: [^ aBlock value ]) asCharacter 
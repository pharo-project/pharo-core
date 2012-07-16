enumeration
fileEntriesDo: aBlock
	
	entries keys sorted do: [ :fileName|
		aBlock value: (entries at: fileName)].
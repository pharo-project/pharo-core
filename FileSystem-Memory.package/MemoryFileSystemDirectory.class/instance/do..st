enumeration
do: aBlock
	self flag: #todo. "use faster ordered dictionary?"
	
	entries keys sorted do: [ :basename|
		aBlock value: (entries at: basename)].
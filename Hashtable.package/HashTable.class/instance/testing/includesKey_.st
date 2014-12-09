includesKey: aKey
	self at: aKey ifAbsent: [ ^false ].
	^true.
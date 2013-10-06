expandTreeInMorph: morph
	Cursor wait showWhile: [
		(morph respondsTo: #expandRoots)
			ifTrue: [ morph expandRoots ].
		morph submorphs do: [ :subMorph|
			(subMorph respondsTo: #expandRoots) 
				ifTrue: [ subMorph expandRoots ]]].
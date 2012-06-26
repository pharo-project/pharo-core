serialize/materialize
serializeReferencesOf: anObject with: anEncoder 

	mapping do: [ :index | 
		anEncoder encodeReferenceTo: (anObject instVarAt: index) ].
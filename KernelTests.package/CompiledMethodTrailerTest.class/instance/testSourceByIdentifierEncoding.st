tests
testSourceByIdentifierEncoding

	| trailer id |
	
	trailer := CompiledMethodTrailer new.
	
	id := 'e51b3b55-d5aa-48fa-a008-e674dbdd4abe'.
	trailer sourceIdentifier: id.
	
	self assert: (trailer kind == #SourceByStringIdentifier ).
	
	trailer := trailer testEncoding.
	
	self assert: (trailer kind == #SourceByStringIdentifier ).
	self assert: (trailer sourceIdentifier = id).
	"the last bytecode index must be at 0"
	self assert: (trailer endPC = 0).

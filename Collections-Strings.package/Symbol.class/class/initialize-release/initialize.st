initialize
	Symbol rehash.
	OneCharacterSymbols := nil.
	OneCharacterSymbols := (1 to: 256) collect: [ :i | (i - 1) asCharacter asSymbol].

	Smalltalk addToShutDownList: self.
	SessionManager default registerSystemClassNamed: self name
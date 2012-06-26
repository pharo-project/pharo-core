contents
contentsSymbol
	"Answer a symbol indicating what kind of content should be shown for the method; for normal showing of source code, this symbol is #source.  A nil value in the contentsSymbol slot will be set to #source by this method"

	^ contentsSymbol ifNil:
		[contentsSymbol := self browseWithPrettyPrint
								ifTrue:
									[#prettyPrint]
								ifFalse:
									[#source]]
private
findSelector: aString
	"Answer the selector of aString."

	| example tokens |
	example := aString.
	tokens := Scanner new scanTokens: example.
	tokens size = 1 ifTrue: [^ tokens first].
	tokens first == #'^' ifTrue: [^ nil].
	(tokens second includes: $:) ifTrue: [^ example findSelector].
	Symbol hasInterned: tokens second ifTrue: [:aSymbol | ^ aSymbol].
	^ nil
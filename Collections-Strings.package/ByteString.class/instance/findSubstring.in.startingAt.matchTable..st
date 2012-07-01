comparing
findSubstring: key in: body startingAt: start matchTable: matchTable
	key isWideString ifTrue: [^super findSubstring: key in: body startingAt: start matchTable: matchTable].
	^self findSubstringViaPrimitive: key in: body startingAt: start matchTable: matchTable
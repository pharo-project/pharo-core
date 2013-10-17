highlightSearchedString: string
	
	| searchedString interval firstIndex |
	searchedString := searchedStringHolder contents.
	searchedString ifNil: [ ^ 0 to: 0 ].

	(searchedString includes: $:)
		ifTrue: [ | list |
			list := searchedString subStrings: ':'.
			list size = 1
				ifTrue: [" binary selector "
					firstIndex := string findString: searchedString.
					interval := firstIndex to: (firstIndex+searchedString size-1)]
				ifFalse: [| lastIndex |
					firstIndex := string findString: list first,':'.
					lastIndex := string findString: list last,':' startingAt: firstIndex+ (list first size -1).
					interval := firstIndex to: (lastIndex + list last size)]]
		ifFalse: [
			" unary selector "
			firstIndex := string findString: searchedString.
			interval := firstIndex to: (firstIndex+searchedString size-1)].
	^ interval
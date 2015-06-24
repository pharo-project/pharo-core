searchText: aString
	| search text |

	aString isEmptyOrNil ifTrue: [ ^ #() ].
	search := aString trimBoth asLowercase.
	1 to: self numberOfRows do: [ :rowIndex | 
		text := (self elementWrapped: (self elementAt: rowIndex)) contents trimBoth asLowercase.
		(text beginsWith: search)
			ifTrue: [ ^ {rowIndex} ] ].
	
	^ #()
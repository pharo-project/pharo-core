text selection
searchedString: searchedString in: aString
	| string interval firstIndex |
	
	searchedString ifNil: [ ^ 0 to: 0 ].
	aString isEmptyOrNil ifTrue: [ ^0 to: 0 ].
	string := aString asString.
	interval := 0 to: 0.
	
	(searchedString includes: $:)
		ifTrue: [ | list |
			list := searchedString subStrings: ':'.
			list size = 1
				ifTrue: [" binary selector "
					firstIndex := 1.
					[ firstIndex isZero not and: [ (string at: (firstIndex +1)) isAlphaNumeric ]]
						whileTrue: [
							firstIndex := string findString: searchedString startingAt: firstIndex+1.
							firstIndex isZero
								ifFalse: [ interval := firstIndex to: (firstIndex+searchedString size-1)]]]
				ifFalse: [| lastIndex |
					firstIndex := 1.
					[ firstIndex isZero not and: [ (string at: (firstIndex +1)) isAlphaNumeric ]]
						whileTrue: [
							firstIndex := string findString: list first,':' startingAt: firstIndex+1.
							firstIndex isZero
								ifFalse: [ 
									lastIndex := string findString: list last,':' startingAt: firstIndex+ (list first size -1).
									interval := firstIndex to: (lastIndex + list last size)]]]]
		ifFalse: [
			" unary selector "
			firstIndex := 1.
			[ firstIndex isZero not and: [ (string at: (firstIndex +1)) isAlphaNumeric ]]
				whileTrue: [
					firstIndex := string findString: searchedString startingAt: firstIndex +1.
					firstIndex isZero
						ifFalse: [ interval := firstIndex to: (firstIndex+searchedString size-1)]]].
	^ interval
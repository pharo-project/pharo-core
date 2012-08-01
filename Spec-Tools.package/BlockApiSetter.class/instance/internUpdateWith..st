protocol
internUpdateWith: value
	| string idx start end pre body |
	
	string := value printString.
	idx := string indexOf: $|.
	idx isZero
		ifTrue: [ 
			pre := '['.
			idx := idx +1 ]
		ifFalse: [ pre := (string copyFrom: 1 to: idx), ' ' ].
	start := idx + 1.
	end := string size-1.
	body := (string copyFrom: start to: end) trimBoth.

	choice pre text: pre.
	choice text text: body
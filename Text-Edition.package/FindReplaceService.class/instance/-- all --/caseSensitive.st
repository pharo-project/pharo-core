caseSensitive
	^ caseSensitive ifNil: [caseSensitive := TextEditor caseSensitiveFinds]
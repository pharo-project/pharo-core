converting
asUnicode

	| table charset v |
	self leadingChar = 0 ifTrue: [^ value].
	charset := EncodedCharSet charsetAt: self leadingChar.
	charset isCharset ifFalse: [^ self charCode].
	table := charset ucsTable.
	table isNil ifTrue: [^ 16rFFFD].

	v := table at: self charCode + 1.
	v = -1 ifTrue: [^ 16rFFFD].

	^ v.

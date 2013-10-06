asUnicode

	| table charset v |
	self leadingChar = 0 
		ifTrue: [^ value].
	
	charset := self characterSet.
	charset isCharset 
		ifFalse: [^ self charCode].
	
	table := charset ucsTable.
	table ifNil: [^ 16rFFFD].

	v := table at: self charCode + 1.
	v = -1 ifTrue: [^ 16rFFFD].

	^ v.

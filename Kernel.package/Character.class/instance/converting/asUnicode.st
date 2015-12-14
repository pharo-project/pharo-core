asUnicode
	| tmp1 tmp2 tmp3 |
	self leadingChar = 0
		ifTrue: [ ^ self asInteger ].
	tmp2 := self characterSet.
	tmp2 isCharset
		ifFalse: [ ^ self charCode ].
	tmp1 := tmp2 ucsTable.
	tmp1 ifNil: [ ^ 65533 ].
	tmp3 := tmp1 at: self charCode + 1.
	tmp3 = -1
		ifTrue: [ ^ 65533 ].
	^ tmp3
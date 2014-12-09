testApplyFontWithOneSplitAtEnd
	"We can have only one or two split apply on a TextModel "
	| color |
	self newText: 'AAACCC'.
	color := TxBackColorAttribute with: #foo.
	selection := text selection.
	selection start moveRight:3.
	selection applyAttribute:  color.
	cursor moveToEnd.
	self assert: text spans size = 4.
	self assert: ((cursor  span  style) get: TxBackColorAttribute) equals: #foo.
	cursor moveToStart.
	self assert: ((cursor  span  style) get: TxBackColorAttribute) equals: (text getAttribute: TxBackColorAttribute).
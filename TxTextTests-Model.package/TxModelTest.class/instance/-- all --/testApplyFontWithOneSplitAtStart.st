testApplyFontWithOneSplitAtStart
	"We can have only one or two split apply on a TextModel "
	|color |
	self newText: 'AAACCC'.
	self assert: text spans size = 3.
	color := TxBackColorAttribute with: #foo.
	
	selection := text selection.
	selection end moveLeft: 3.
	
	selection applyAttribute:  color.

	
	self assert: text spans size = 4.
	cursor moveToStart.
	self assert: ((cursor  span  style) get: TxBackColorAttribute) equals: #foo .
	cursor moveToEnd.
	self assert: ((cursor  span  style) get: TxBackColorAttribute) equals: (text getAttribute: TxBackColorAttribute).
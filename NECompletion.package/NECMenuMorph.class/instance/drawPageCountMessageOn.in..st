drawing
drawPageCountMessageOn: aCanvas in: rectangle 
	| msg font msgWidth |
	self pageCount > 1 ifFalse: [ ^ self ].
	msg := self currentPage printString , '/' , self pageCountString.
	font := self class messageFont.
	msgWidth := font widthOfString: msg.
	aCanvas 
		drawString: msg
		in: (rectangle translateBy: (rectangle width - msgWidth - 3) @ 3)
		font: font
		color: Color darkGray
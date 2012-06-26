drawing
drawModelMessageOn: aCanvas in: rectangle 
	| message |
	message := context model hasMessage 
		ifTrue: [ context model message , ' | ctrl-h=help' ]
		ifFalse: [ self detailMessage ].
	aCanvas 
		drawString: message
		in: (rectangle insetBy: 3)
		font: self class messageFont
		color: Color darkGray
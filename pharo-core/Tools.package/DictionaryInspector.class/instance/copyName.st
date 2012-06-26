menu
copyName
	"Copy the name of the current variable, so the user can paste it into the 
	window below and work with is. If collection, do (xxx at: 1)."
	| sel |
	self selectionIndex <= self numberOfFixedFields
		ifTrue: [super copyName]
		ifFalse: [sel := String streamContents: [:strm | 
							strm nextPutAll: '(self at: '.
							(keyArray at: selectionIndex - self numberOfFixedFields)
								storeOn: strm.
							strm nextPutAll: ')'].
			Clipboard clipboardText: sel asText 			"no undo allowed"]
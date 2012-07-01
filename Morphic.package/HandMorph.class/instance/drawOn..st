drawing
drawOn: aCanvas 
	"Draw the hand itself (i.e., the cursor)."

	temporaryCursor isNil 
		ifTrue: [aCanvas paintImage: NormalCursor at: bounds topLeft]
		ifFalse: [aCanvas paintImage: temporaryCursor at: bounds topLeft].
	
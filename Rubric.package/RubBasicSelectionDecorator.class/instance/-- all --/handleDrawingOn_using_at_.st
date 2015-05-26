handleDrawingOn: aCanvas using: aDisplayScanner at: aPosition 
	self selectionStart ifNil: [ ^ self ].
	self selectionStop ifNil: [ ^self ].
	aCanvas isShadowDrawing
		ifTrue: [ ^ self ].	"don't draw selection with shadow"
	super handleDrawingOn: aCanvas using: aDisplayScanner at: aPosition 

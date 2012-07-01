accessing
selectionBorderStyle
	"Answer the border style to use with the receiver is the selected element."
	
	^self isInDockingBar 
		ifTrue: [self theme menuItemInDockingBarSelectedBorderStyleFor: self]
		ifFalse: [self theme menuItemSelectedBorderStyleFor: self]
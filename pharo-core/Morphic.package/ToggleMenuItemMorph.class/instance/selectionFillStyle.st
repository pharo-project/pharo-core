private
selectionFillStyle
	"Answer the fill style to use with the receiver is the selected element."
	
	^self isInDockingBar 
		ifTrue: [self theme menuItemInDockingBarSelectedFillStyleFor: self]
		ifFalse: [self theme menuItemSelectedFillStyleFor: self]
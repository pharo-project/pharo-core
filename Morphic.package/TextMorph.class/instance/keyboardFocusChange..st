as yet unclassified 
keyboardFocusChange: aBoolean 	
	| w ptm |
	super keyboardFocusChange: aBoolean.
	paragraph isNil ifFalse:[paragraph focused: aBoolean].	
	aBoolean 
		ifTrue:["A hand is wanting to send us characters..."
			self hasFocus ifFalse: [self editor	"Forces install"].
			self showOverEditableTextCursor]
		ifFalse:["A hand has clicked elsewhere..."		
			(w := self world) 
				ifNotNil:[w handsDo: [:h | h keyboardFocus == self ifTrue: [^self]].
					"Release control unless some hand is still holding on"			
					self releaseEditor].
			self hideOverEditableTextCursor].
	self manageCursor.
	self focusChanged
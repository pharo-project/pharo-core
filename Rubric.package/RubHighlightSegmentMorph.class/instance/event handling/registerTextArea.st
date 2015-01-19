registerTextArea
	super registerTextArea.
	textArea announcer subscribe: RubKeystroke send: #whenKeyPressed: to: self.
	textArea announcer subscribe: RubMouseClick send: #whenMouseClicked: to: self.
	textArea announcer subscribe: RubSelectionChanged send: #whenSelectionChanged: to: self.
	
	self color: (self theme rubScrolledTextMorphThemer highlightBackgroundColorFor: textArea).
	self borderStyle: (self theme rubScrolledTextMorphThemer highlightBorderStyleFor: textArea).
	self borderWidth: (self textArea hasSelection
		ifTrue: [ 2 * super borderWidth] 
		ifFalse: [ super borderWidth ])
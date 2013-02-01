items addition
addAllItems: aWindow

	| width toolbar btnFont |	
	toolbar := self buildToolbar: aWindow.
	btnFont := StandardFonts buttonFont.
	aWindow
		addMorph: (self treeMorph buildContents; yourself)
		fullFrame: (0@0 corner: 1@0.5) asLayoutFrame.
	aWindow
		addMorph: toolbar
		fullFrame:  ((0@0.5 corner: 1@0.5) asLayoutFrame bottomOffset: (btnFont height + 14)).
			
	self textArea: self buildTextArea.
	
	aWindow
		addMorph: self textArea
		fullFrame:  ((0@0.5 corner: 1@1) asLayoutFrame topOffset: (btnFont height + 14))
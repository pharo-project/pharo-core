items addition
addAllItems: aWindow

	| width toolbar btnFont |	
	toolbar := self buildToolbar: aWindow.
	btnFont := StandardFonts buttonFont.
	aWindow
		addMorph: (self treeMorph buildContents; yourself)
		fullFrame: (LayoutFrame
			fractions: (0@0 corner: 1@0.5)
			offsets:(0@0 corner:0@0)).
	aWindow
		addMorph: toolbar
		fullFrame: (LayoutFrame
			fractions: (0@0.5 corner: 1@0.5)
			offsets:(0@0 corner:0@(btnFont height + 14))).
			
	self textArea: self buildTextArea.
	
	aWindow
		addMorph: self textArea
		fullFrame: (LayoutFrame
			fractions: (0@0.5 corner: 1@1)
			offsets:(0@(btnFont height + 14) corner:0@0)).
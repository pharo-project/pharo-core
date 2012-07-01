label-styles
configureWindowLabelAreaFor: aWindow
	"Configure the label area for the given window."
	
	aWindow labelArea
		addMorphBack: (Morph new extent: aWindow class borderWidth @ 0).
	aWindow hasMenuBox ifTrue: [aWindow addMenuControl].
	aWindow labelArea
		addMorphBack: (Morph new extent: aWindow class borderWidth @ 0).
	aWindow basicLabel ifNotNil: [:label |
		label hResizing: #spaceFill.
		aWindow labelArea addMorphBack: label].
	aWindow hasCollapseBox ifTrue: [aWindow addCollapseBox].
	aWindow hasExpandBox ifTrue: [aWindow addExpandBox].
	aWindow hasCloseBox ifTrue: [	
		aWindow labelArea
			addMorphBack: (Morph new extent: 2@0).
		aWindow addCloseBox].
	aWindow labelArea
		addMorphBack: (Morph new extent: aWindow class borderWidth @ 0)
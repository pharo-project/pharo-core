render: aLabelPresentation
	labelMorph := (LabelMorph contents: aLabelPresentation formatedDisplayValue) 
			layoutFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1));
			vResizing: #spaceFill;
			hResizing: #spaceFill;
			font: StandardFonts haloFont;
			yourself.
	aLabelPresentation on: GLMPresentationUpdated send: #actOnPresentationUpdated: to: self.
	^labelMorph
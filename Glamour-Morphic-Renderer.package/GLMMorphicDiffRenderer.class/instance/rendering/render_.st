render: aPresentation
	| textMorph |
	textMorph := (DiffMorph from: aPresentation displayValue first to: aPresentation displayValue last)
"			onKeyStrokeSend: #keystroke:from: to: textModel;
"			layoutFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1));
			vResizing: #spaceFill;
			hResizing: #spaceFill;
			color: Color white;
			yourself.
"	self installActionsOnUI: textModel fromPresentation: aTextPresentation.
	aTextPresentation selectedTextBlock: [ textMorph textMorph editor selection ].
	aTextPresentation textBlock: [ textMorph textMorph editor text ].
"	^textMorph
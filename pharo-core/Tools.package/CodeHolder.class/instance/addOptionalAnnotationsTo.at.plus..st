annotation
addOptionalAnnotationsTo: window at: fractions plus: verticalOffset
	"Add an annotation pane to the window if desired, and return the incoming verticalOffset plus the height of the added pane, if any"

	| aTextMorph delta  |
	self showAnnotationPane ifFalse: [^ verticalOffset].
	aTextMorph := CodeAnnotationMorph on: self.
	delta := StandardFonts defaultFont height+2.
	window 
		addMorph: aTextMorph
		fullFrame: (LayoutFrame 
				fractions: fractions 
				offsets: (0@verticalOffset corner: 0@(verticalOffset + delta))).
	^ verticalOffset + delta
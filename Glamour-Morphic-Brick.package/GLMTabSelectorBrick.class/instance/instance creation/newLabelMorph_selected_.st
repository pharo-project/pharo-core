newLabelMorph: aStringOrMorph selected: selectedStringOrMorph
	"Answer a new label morph with the given label text or morph and
	alternate when selected."

	^GLMTabLabelBrick new
		roundedCorners: #(1 4);
		cornerStyle: self cornerStyle;
		label: aStringOrMorph selected: selectedStringOrMorph;
		font: self font;
		on: #mouseDown send: #tabClicked:with: to: self;
		tabSelector: self
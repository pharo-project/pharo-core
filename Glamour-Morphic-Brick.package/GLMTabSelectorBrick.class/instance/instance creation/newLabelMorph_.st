newLabelMorph: aStringOrMorph
	"Answer a new label morph with the given label text."

	^GLMTabLabelBrick new
		roundedCorners: #(1 4);
		cornerStyle: self cornerStyle;
		label: aStringOrMorph;
		font: self font;
		on: #mouseDown send: #tabClicked:with: to: self;
		tabSelector: self;
		vSpaceFill
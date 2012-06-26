accessing
label: aStringOrTextOrMorph font: aFont
	"Label this button with the given string or morph."

	| r |
	self removeAllMorphs.
	"nest label in a row for centering"
	r := AlignmentMorph newRow
		borderWidth: 0;
		layoutInset: 0;
		color: Color transparent;
		hResizing: #shrinkWrap;
		vResizing: #spaceFill;
		wrapCentering: #center;
		listCentering: #center;
		cellPositioning: #center.
	aStringOrTextOrMorph isMorph
		ifTrue: [
			label := aStringOrTextOrMorph.
			r addMorph: aStringOrTextOrMorph]
		ifFalse: [
			label := aStringOrTextOrMorph.
			r addMorph: (self newLabel: aFont)].
	(self labelMorph respondsTo: #enabled:) ifTrue: [
		self labelMorph enabled: self enabled].
	self addMorph: r.
	self updateLabelEnablement

*Polymorph-Widgets
addExpandBox
	"If I have a labelArea, add a close box to it"
	| frame |
	labelArea
		ifNil: [^ self].
	expandBox := self createExpandBox.
	self setExpandBoxBalloonText.
	frame := LayoutFrame new.
	frame leftFraction: 1;
		 leftOffset: (self boxExtent x * 2 + 3) negated;
		 topFraction: 0;
		 topOffset: 0.
	expandBox layoutFrame: frame.
	labelArea addMorphBack: expandBox
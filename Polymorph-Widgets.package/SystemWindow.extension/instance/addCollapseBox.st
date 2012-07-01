*Polymorph-Widgets
addCollapseBox
	"If I have a labelArea, add a collapse box to it."
	
	| frame |
	labelArea
		ifNil: [^ self].
	collapseBox := self createCollapseBox.
	frame := LayoutFrame new.
	frame leftFraction: 1;
		 leftOffset: self boxExtent x negated;
		 topFraction: 0;
		 topOffset: 0.
	collapseBox layoutFrame: frame.
	labelArea addMorphBack: collapseBox
*Polymorph-Widgets
addCollapseBox
	"If I have a labelArea, add a collapse box to it."
	
	labelArea
		ifNil: [^ self].
	collapseBox := self createCollapseBox.
	collapseBox layoutFrame: (LayoutFrame new leftFraction: 1; leftOffset: self boxExtent x negated).
	labelArea addMorphBack: collapseBox
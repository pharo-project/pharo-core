*Polymorph-Widgets
addMorph: aMorph fullFrame: aLayoutFrame
	"Add a morph to the receiver with the given layout frame."
	
	| left right bottom top windowBorderWidth |
	windowBorderWidth := self class borderWidth.

	left := aLayoutFrame leftOffset ifNil: [0].
	right := aLayoutFrame rightOffset ifNil: [0].

	bottom := aLayoutFrame bottomOffset ifNil: [0].
	top := aLayoutFrame topOffset ifNil: [0].
	
	aLayoutFrame rightFraction = 1 ifTrue: [aLayoutFrame rightOffset: right - windowBorderWidth].
	aLayoutFrame leftFraction = 0
		ifTrue: [aLayoutFrame leftOffset: left + windowBorderWidth]
		ifFalse: [aLayoutFrame leftFraction = 1 ifFalse: [
					aLayoutFrame leftOffset: left + ProportionalSplitterMorph splitterWidth]].

	aLayoutFrame bottomFraction = 1 ifTrue: [aLayoutFrame bottomOffset: bottom - windowBorderWidth].
	aLayoutFrame topFraction = 0
		ifTrue: [aLayoutFrame topOffset: top]
		ifFalse: [aLayoutFrame topFraction = 1 ifFalse: [
					aLayoutFrame topOffset: top + ProportionalSplitterMorph splitterWidth]].
	
	super addMorph: aMorph fullFrame: aLayoutFrame.

	paneMorphs := paneMorphs copyReplaceFrom: 1 to: 0 with: (Array with: aMorph).
	aMorph adoptPaneColor: self paneColor.
	aMorph
		borderStyle: (self theme windowPaneBorderStyleFor: aMorph in: self);
		color: (aMorph initialColorInSystemWindow: self).
	self theme settings scrollBarsOnRight	"reorder panes so flop-out right-side scrollbar is visible"
		ifTrue: [self addMorphBack: aMorph].
		
	self owner ifNotNil: [self addPaneSplitters] "do when opened for performance"
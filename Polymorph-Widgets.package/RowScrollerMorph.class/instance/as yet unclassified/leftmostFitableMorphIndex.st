leftmostFitableMorphIndex
	"Answer the index of the target morph that, if the receiver was scrolled to
	would allow all remaining targets to fit in the current scroller bounds."

	|index scrollerWidth targetRight|
	index := self targetMorphs size + 1.
	scrollerWidth := self scroller width.
	targetRight := self scrollTarget right.
	self targetMorphs reverseDo: [:m |
		targetRight - m left > scrollerWidth ifTrue: [
			^index min: self targetMorphs size].
		index := index - 1].
	^index
*Polymorph-Widgets
minExtent
	"Calculate the min extent of the receiver based on all pages."

	|extra|
	self page ifNil: [^super minExtent max: self tabSelectorMorph minExtent].
	extra := 0@(self tabSelectorMorph minExtent y) + (self contentMorph borderWidth * 2).
	extra := extra + self contentMorph layoutInset topLeft.
	extra := extra + self contentMorph layoutInset bottomRight.
	^super minExtent max: (((self pages inject: 0 @ 0 into: [:mw :pm | mw max: pm minExtent]) + extra)
		max: self tabSelectorMorph minExtent)
computedBounds
	| bw tb tsb tbw li yGap |
	tb := treeMorph bounds.
	tbw := treeMorph borderWidth.
	yGap := self layoutInset asPoint y + self cellInset asPoint y.
	^ (tb bottomLeft + (tbw @ (self computedHeight + yGap) negated)) corner: (tb bottomRight - ( (tbw * 2) @ yGap )).

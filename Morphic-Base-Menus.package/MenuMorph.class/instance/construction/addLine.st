addLine
	"Append a divider line to this menu. Suppress duplicate lines."
	self hasItems
		ifFalse: [^ nil].
	(self lastSubmorph isKindOf: MenuLineMorph)
		ifFalse: [^ self addMorphBack: MenuLineMorph new].
	^ nil
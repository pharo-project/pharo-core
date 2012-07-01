balloon help
balloonHelp: aBalloonMorph
	"Return the balloon morph associated with this hand"
	| oldHelp |
	oldHelp := self balloonHelp.
	oldHelp ifNotNil:[oldHelp delete].
	aBalloonMorph
		ifNil:[self removeProperty: #balloonHelpMorph]
		ifNotNil:[self setProperty: #balloonHelpMorph toValue: aBalloonMorph]
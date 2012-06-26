*Polymorph-Widgets
mouseLeave: evt
	"Reinstate the old border style."

	(self valueOfProperty: #oldBorder)
		ifNotNil: [:b |
			self borderStyle: b.
			self removeProperty: #oldBorder]
		ifNil: [self borderNormal]
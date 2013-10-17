highlight
	self
		allMorphsDo: [:m | (m isKindOf: StringMorph)
				ifTrue: [m setProperty: #originalColor toValue: m color.
					m color: self theme currentSettings selectionTextColor]].
	complexContents highlightingColor 
		ifNotNil: [:c |
			self setProperty: #originalColor toValue: color.
			self color: c]
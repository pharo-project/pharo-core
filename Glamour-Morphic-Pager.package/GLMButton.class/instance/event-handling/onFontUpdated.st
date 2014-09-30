onFontUpdated
	labelMorph ifNotNil: [
		labelMorph font: self font.
		labelMorph color: self fontModel color.
		self updateExtent.
	].
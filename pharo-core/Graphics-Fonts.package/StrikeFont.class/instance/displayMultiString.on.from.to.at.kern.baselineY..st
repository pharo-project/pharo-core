displaying
displayMultiString: aString on: aBitBlt from: startIndex to: stopIndex at: aPoint kern: kernDelta baselineY: baselineY 
	| nextWide destX leftX rightX glyphInfo char displayInfo destY gfont charIndex |
	destX := aPoint x.
	charIndex := startIndex.
	glyphInfo := Array new: 5.
	[ charIndex <= stopIndex ] whileTrue: 
		[ nextWide := aString indexOfWideCharacterFrom: charIndex to: stopIndex.
		nextWide = 0 ifTrue: [nextWide := stopIndex +1].
		nextWide > charIndex ifTrue: [ destX := (aBitBlt displayString: aString 
			from: charIndex 
			to: nextWide -1
			at: destX @ aPoint y
			strikeFont: self
			kern: kernDelta) x.
			charIndex := nextWide]. 
		nextWide > stopIndex ifFalse: [
		char := aString at: charIndex.
		(self hasGlyphOf: char)
			ifTrue: 
				[ self 
					glyphInfoOf: char
					into: glyphInfo.
				 ] 
			ifFalse: 
				[self fallbackFont glyphInfoOf: char into: glyphInfo. ].
			leftX := glyphInfo at: 2.
				rightX := glyphInfo at: 3.
				destY := glyphInfo at: 4.
				gfont := glyphInfo at: 5.
				(gfont == aBitBlt lastFont) ifFalse: [gfont installOn: aBitBlt].
				aBitBlt displayGlyph: (glyphInfo at: 1) at: (destX @ (baselineY - destY)) left: leftX right: rightX font: self.
				destX := destX + (rightX - leftX + kernDelta).
				charIndex := charIndex + 1]].
	^ Array 
		with: charIndex
		with: aPoint + (destX @ 0)
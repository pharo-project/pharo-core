scanning
characterBlockAtPoint: aPoint index: index in: textLine
	"This method is the Morphic characterBlock finder.  It combines
	MVC's characterBlockAtPoint:, -ForIndex:, and buildCharcterBlock:in:"
	| runLength lineStop done stopCondition |
	line := textLine.
	rightMargin := line rightMargin.
	lastIndex := line first.
	self setStopConditions.		"also sets font"
	characterIndex := index.  " == nil means scanning for point"
	characterPoint := aPoint.
	(characterPoint isNil or: [characterPoint y > line bottom])
		ifTrue: [characterPoint := line bottomRight].
	(text isEmpty or: [(characterPoint y < line top or: [characterPoint x < line left])
				or: [characterIndex notNil and: [characterIndex < line first]]])
		ifTrue:	[^ (CharacterBlock new stringIndex: line first text: text
					topLeft: line leftMargin@line top extent: 0 @ textStyle lineGrid)
					textLine: line].
	destX := leftMargin := line leftMarginForAlignment: alignment.
	destY := line top.
	runLength := text runLengthFor: line first.
	characterIndex
		ifNotNil:	[lineStop := characterIndex  "scanning for index"]
		ifNil:	[lineStop := line last  "scanning for point"].
	runStopIndex := lastIndex + (runLength - 1) min: lineStop.
	lastCharacterExtent := 0 @ line lineHeight.
	spaceCount := 0.

	done  := false.
	[done] whileFalse:
		[stopCondition := self scanCharactersFrom: lastIndex to: runStopIndex
			in: text string rightX: characterPoint x
			stopConditions: stopConditions kern: kern.
		"see setStopConditions for stopping conditions for character block 	operations."
		self lastCharacterExtentSetX: (specialWidth
			ifNil: [font widthOf: (text at: lastIndex)]
			ifNotNil: [specialWidth]).
		(self perform: stopCondition) ifTrue:
			[characterIndex
				ifNil: [
					"Result for characterBlockAtPoint: "
					(stopCondition ~~ #cr and: [ lastIndex == line last
						and: [ aPoint x > ((characterPoint x) + (lastCharacterExtent x / 2)) ]])
							ifTrue: [ "Correct for right half of last character in line"
								^ (CharacterBlock new stringIndex: lastIndex + 1
										text: text
										topLeft: characterPoint + (lastCharacterExtent x @ 0) + (font descentKern @ 0)
										extent:  0 @ lastCharacterExtent y)
									textLine: line ].
						^ (CharacterBlock new stringIndex: lastIndex
							text: text topLeft: characterPoint + (font descentKern @ 0)
							extent: lastCharacterExtent - (font baseKern @ 0))
									textLine: line]
				ifNotNil: ["Result for characterBlockForIndex: "
						^ (CharacterBlock new stringIndex: characterIndex
							text: text topLeft: characterPoint + ((font descentKern) - kern @ 0)
							extent: lastCharacterExtent)
									textLine: line]]]
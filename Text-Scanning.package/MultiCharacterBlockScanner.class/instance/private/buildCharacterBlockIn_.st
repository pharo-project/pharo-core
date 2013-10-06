buildCharacterBlockIn: para
	| lineIndex runLength lineStop done stopCondition |
	"handle nullText"
	(para numberOfLines = 0 or: [text size = 0])
		ifTrue:	[^ CharacterBlock new stringIndex: 1  "like being off end of string"
					text: para text
					topLeft: (para leftMarginForDisplayForLine: 1 alignment: (alignment ifNil:[textStyle alignment]))
								@ para compositionRectangle top
					extent: 0 @ textStyle lineGrid].
	"find the line"
	lineIndex := para lineIndexOfTop: characterPoint y.
	destY := para topAtLineIndex: lineIndex.
	line := para lines at: lineIndex.
	rightMargin := para rightMarginForDisplay.

	(lineIndex = para numberOfLines and:
		[(destY + line lineHeight) < characterPoint y])
			ifTrue:	["if beyond lastLine, force search to last character"
					self characterPointSetX: rightMargin]
			ifFalse:	[characterPoint y < (para compositionRectangle) top
						ifTrue: ["force search to first line"
								characterPoint := (para compositionRectangle) topLeft].
					characterPoint x > rightMargin
						ifTrue:	[self characterPointSetX: rightMargin]].
	destX := (leftMargin := para leftMarginForDisplayForLine: lineIndex alignment: (alignment ifNil:[textStyle alignment])).
	nextLeftMargin:= para leftMarginForDisplayForLine: lineIndex+1 alignment: (alignment ifNil:[textStyle alignment]).
	lastIndex := line first.

	self setStopConditions.		"also sets font"
	runLength := (text runLengthFor: line first).
	characterIndex == nil
		ifTrue:	[lineStop := line last  "characterBlockAtPoint"]
		ifFalse:	[lineStop := characterIndex  "characterBlockForIndex"].
	(runStopIndex := lastIndex + (runLength - 1)) > lineStop
		ifTrue:	[runStopIndex := lineStop].
	lastCharacterExtent := 0 @ line lineHeight.
	spaceCount := 0. done  := false.
	self handleIndentation.

	[done]
	whileFalse:
	[stopCondition := self scanCharactersFrom: lastIndex to: runStopIndex
			in: text string rightX: characterPoint x
			stopConditions: stopConditions kern: kern.

	"see setStopConditions for stopping conditions for character block 	operations."
	self lastCharacterExtentSetX: (font widthOf: (text at: lastIndex)).
	(self perform: stopCondition) ifTrue:
		[characterIndex == nil
			ifTrue: ["characterBlockAtPoint"
					^ CharacterBlock new stringIndex: lastIndex text: text
						topLeft: characterPoint + (font descentKern @ 0)
						extent: lastCharacterExtent]
			ifFalse: ["characterBlockForIndex"
					^ CharacterBlock new stringIndex: lastIndex text: text
						topLeft: characterPoint + ((font descentKern) - kern @ 0)
						extent: lastCharacterExtent]]]
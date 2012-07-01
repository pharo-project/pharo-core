access
prior
	| currFile preamble prevPos tokens prevFileIndex |
	currFile := file readOnlyCopy.
	currFile position: (0 max: position - 150).
	[currFile position < (position - 1)] whileTrue: [preamble := currFile nextChunk].
	currFile close.
	prevPos := nil.
	(preamble findString: 'methodsFor:' startingAt: 1) > 0
		ifTrue: [tokens := Scanner new scanTokens: preamble]
		ifFalse: [tokens := Array new].
	((tokens size between: 7 and: 8)
	and: [(tokens at: tokens size - 5) == #methodsFor:]) ifTrue: [
		(tokens at: tokens size - 3) == #stamp:
		ifTrue: [
			prevPos := tokens last.
			prevFileIndex := SourceFiles fileIndexFromSourcePointer: prevPos.
			prevPos := SourceFiles filePositionFromSourcePointer: prevPos]
		ifFalse: [
			prevPos := tokens at: tokens size - 2.
			prevFileIndex := tokens last].
		(prevPos = 0 or: [prevFileIndex = 0]) ifTrue: [prevPos := nil]].
	prevPos ifNil: [^ nil].
	^ {prevFileIndex. prevPos. 
		SourceFiles sourcePointerFromFileIndex: prevFileIndex andPosition: prevPos}
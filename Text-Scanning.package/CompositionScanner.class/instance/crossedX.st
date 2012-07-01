stop conditions
crossedX
	"There is a word that has fallen across the right edge of the composition 
	rectangle. This signals the need for wrapping which is done to the last 
	space that was encountered, as recorded by the space stop condition."

	pendingKernX := 0.
	spaceCount >= 1 ifTrue:
		["The common case. First back off to the space at which we wrap."
		line stop: spaceIndex.
		lineHeight := lineHeightAtSpace.
		baseline := baselineAtSpace.
		spaceCount := spaceCount - 1.
		spaceIndex := spaceIndex - 1.

		"Check to see if any spaces preceding the one at which we wrap.
			Double space after punctuation, most likely."
		[(spaceCount > 1 and: [(text at: spaceIndex) = Space])]
			whileTrue:
				[spaceCount := spaceCount - 1.
				"Account for backing over a run which might
					change width of space."
				font := text fontAt: spaceIndex withStyle: textStyle.
				spaceIndex := spaceIndex - 1.
				spaceX := spaceX - (font widthOf: Space)].
		line paddingWidth: rightMargin - spaceX.
		line internalSpaces: spaceCount]
	ifFalse:
		["Neither internal nor trailing spaces -- almost never happens."
		lastIndex := lastIndex - 1.
		[destX <= rightMargin]
			whileFalse:
				[destX := destX - (font widthOf: (text at: lastIndex)).
				lastIndex := lastIndex - 1].
		spaceX := destX.
		line paddingWidth: rightMargin - destX.
		line stop: (lastIndex max: line first)].
	^true
initialize-release
display: argString at: argPoint from: argMinVal to: argMaxVal during: argWorkBlock

	progressTitle := argString.
	aPoint := argPoint.
	minVal := argMinVal.
	maxVal := argMaxVal.
	workBlock := argWorkBlock.
	^self signal
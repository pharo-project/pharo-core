format
	"Answer an Integer that encodes this layout in the way that VM expects it."
	
	| fieldSize sizeHiBits format |
	fieldSize := self fieldSize + 1.
	sizeHiBits := fieldSize // 64.
	format := sizeHiBits.
	format := (format bitShift: 5) + compactClassIndex.
	format := (format bitShift: 4) + self instanceSpecification.
	format := (format bitShift: 6) + (fieldSize \\ 64).
	format := (format bitShift: 1).
	^ format
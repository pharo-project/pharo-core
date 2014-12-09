spansAndLineNumbersDo: aBlock
	| lineNumber |
	lineNumber := 1.
	
	self startSpan do: [:span |
		aBlock value: span value: lineNumber.
		span isLineSeparator ifTrue: [ lineNumber := lineNumber + 1].].
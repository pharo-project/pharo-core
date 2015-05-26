testOneColumnOnly

	| m |
	m := Matrix column:  #(11 12 13).
	self assert: m numberOfColumns = 1.
	self assert: m numberOfRows = 3.

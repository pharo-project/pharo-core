enumerateAllSelections
	1 to: self numberOfSelections do: [:n |
		self assert: (self evaluateSelectionNumber: n) == failure.
		self assert: ((expectedErrors at: n) = morph editor selection asString).
		self assert: ((expectedErrorPositions at: n) = morph editor startIndex).
		morph editor cut].
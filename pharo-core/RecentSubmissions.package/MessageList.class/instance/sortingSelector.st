accessing
sortingSelector

	sortingSelector ifNil: [^ #groupedByClass].
	^sortingSelector
	
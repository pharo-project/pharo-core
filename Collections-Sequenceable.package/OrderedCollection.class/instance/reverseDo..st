enumerating
reverseDo: aBlock 
	"Override the superclass for performance reasons."
	| index |
	index := lastIndex.
	[index >= firstIndex]
		whileTrue: 
			[aBlock value: (array at: index).
			index := index - 1]
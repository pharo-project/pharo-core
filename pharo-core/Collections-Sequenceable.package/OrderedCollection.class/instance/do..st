enumerating
do: aBlock 
	"Override the superclass for performance reasons."
	| index |
	index := firstIndex.
	[index <= lastIndex]
		whileTrue: 
			[aBlock value: (array at: index).
			index := index + 1]
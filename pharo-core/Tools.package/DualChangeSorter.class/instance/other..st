other
other: theOne
	"Return the other side's ChangeSorter"
	^ theOne == leftCngSorter
		ifTrue: [rightCngSorter]
		ifFalse: [leftCngSorter]
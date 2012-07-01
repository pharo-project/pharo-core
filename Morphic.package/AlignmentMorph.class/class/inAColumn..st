instance creation
inAColumn: aCollectionOfMorphs
	"Answer a columnar AlignmentMorph holding the given collection"

	| col |
	col := self newColumn
		color: Color transparent;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		layoutInset: 1;
		borderColor: Color black;
		borderWidth: 1;
		wrapCentering: #center;
		cellPositioning: #topCenter.
	aCollectionOfMorphs do: [:each | col addMorphBack: each].
	^ col
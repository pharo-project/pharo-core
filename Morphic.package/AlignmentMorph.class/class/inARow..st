instance creation
inARow: aCollectionOfMorphs
	"Answer a row-oriented AlignmentMorph holding the given collection"

	| aRow |
	aRow := self newRow
		color: Color transparent;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		layoutInset: 1;
		borderColor: Color black;
		borderWidth: 1;
		wrapCentering: #center;
		cellPositioning: #topCenter.
	aCollectionOfMorphs do: [ :each | aRow addMorphBack: each].
	^ aRow
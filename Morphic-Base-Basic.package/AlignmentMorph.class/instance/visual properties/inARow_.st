inARow: aCollectionOfMorphs 
	| row |
	row := self class newRow color: Color transparent;
				 vResizing: #shrinkWrap;
				 layoutInset: 2;
				 wrapCentering: #center;
				 cellPositioning: #leftCenter.
	aCollectionOfMorphs
		do: [:each | row addMorphBack: each].
	^ row
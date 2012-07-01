display
itemMorphFor: anObject index: anIndex
	"Answer a morph for the object with the appropriate icon."

	|item icon|
	item := IconicListItem new
		changeTableLayout;
		listDirection: #leftToRight;
		cellPositioning: #center;
		cellInset: 2;
		borderWidth: 0;
		color: Color transparent;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		originalObject: anObject;
		extent: 20@16.
	icon := self getIconSelector ifNotNil: [self model perform: self getIconSelector withEnoughArguments: {anObject. anIndex}].
	icon ifNotNil: [
		item addMorphBack: icon asMorph].
	item addMorphBack: (self wrapItem: anObject index: anIndex) asMorph.
	^item
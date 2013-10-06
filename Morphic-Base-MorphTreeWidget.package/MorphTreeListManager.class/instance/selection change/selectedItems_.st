selectedItems: aNodeItemCollection
	self listModel okToDiscardEdits ifFalse: [^ self].
	self emptySelection.
	self addAllToSelection: (self nodeMorphsWithAllNodeItems: aNodeItemCollection).
	lastClickedMorph
		ifNil: [lastClickedMorph := self selectedMorphList
						ifEmpty: []
						ifNotEmpty: [self selectedMorphList last]]
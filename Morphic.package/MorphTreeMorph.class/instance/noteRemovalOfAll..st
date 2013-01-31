updating
noteRemovalOfAll: aCollection
	"TODO: update the selection as well"
	
	scroller removeAllMorphsIn: aCollection.
	self selectedMorphList do: [:each | (aCollection includes: each) ifTrue: [self listManager removeFromSelection: each]].
	self adjustSubmorphPositions


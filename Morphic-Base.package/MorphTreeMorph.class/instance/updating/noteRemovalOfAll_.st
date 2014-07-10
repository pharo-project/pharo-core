noteRemovalOfAll: aCollection
	"TODO: update the selection as well"

	scroller removeAllMorphsIn: aCollection.
	self listManager isCheckList
		ifFalse: [ self listManager noteRemovalOfAll: aCollection ].
	aCollection do: [ :each | each delete ].
	self adjustSubmorphPositions
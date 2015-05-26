dstMessageCategoryDstListMorph: dstListMorph
	| dropItem |
	^dstListMorph getListSelector == #messageCategoryList
		ifTrue: 
			[dropItem := dstListMorph potentialDropItem.
			dropItem ifNotNil: [dropItem asSymbol]]
		ifFalse: [self selectedMessageCategoryName ifNil: [ Protocol unclassified ]]
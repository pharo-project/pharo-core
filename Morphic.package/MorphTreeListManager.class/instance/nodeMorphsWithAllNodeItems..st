accessing
nodeMorphsWithAllNodeItems: aNodeItemList
	^ self allNodeMorphs select: [:m | aNodeItemList includes: m complexContents withoutListWrapper]
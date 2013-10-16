selectedObjectDo: aBlock
	self selectedElement ifNotNilDo: [ :element |
		aBlock value: element value ]
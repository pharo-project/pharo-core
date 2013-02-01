list protocol
draggedItemAtIndex: anIndex

	^ self dragItemSelector
			ifNil: [ self getRawItemAt: anIndex ]
			ifNotNil: [:s | self model perform: s with: anIndex  ]
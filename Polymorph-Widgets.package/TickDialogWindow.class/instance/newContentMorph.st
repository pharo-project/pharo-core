display
newContentMorph

	self listModel: (self tickListClass itemsList: self itemsList itemsHeaderName: self itemsHeaderName wrapBlockOrSelector: self wrapBlockOrSelector).
	self defaultValue ifTrue: [ self listModel selectAll ].
	self listMorph: (self listModel buildContents vResizing: #spaceFill; hResizing: #spaceFill).
	^ self listMorph
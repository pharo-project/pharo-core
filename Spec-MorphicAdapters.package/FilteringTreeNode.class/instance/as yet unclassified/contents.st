contents
	^ contents ifNil: [ contents := self childrenItems collect: [:ci | self childNodeFromItem: ci ] ]
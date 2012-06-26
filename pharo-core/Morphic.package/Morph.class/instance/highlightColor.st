accessing
highlightColor
	
	| val |
	^ (val := self valueOfProperty: #highlightColor)
		ifNotNil:
			[val ifNil: [self error: 'nil highlightColor']]
		ifNil:
			[owner ifNil: [self color] ifNotNil: [owner highlightColor]]
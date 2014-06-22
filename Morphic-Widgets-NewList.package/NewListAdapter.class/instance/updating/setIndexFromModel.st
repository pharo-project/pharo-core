setIndexFromModel

	| index |
	index := self getIndexSelector 
				ifNil: [ ^ self ]
				ifNotNil: [:s | self model perform: s ].
			
	self list setIndex: index.
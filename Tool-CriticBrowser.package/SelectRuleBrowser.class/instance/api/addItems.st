addItems
	toSelectModel selectedItem
		ifNotNil:
			[ :item |
			item content isComposite
				ifFalse: [ selectRule add: item content ]
				ifTrue: [ selectRule addAll: item content rules ] ].
	self updateTree
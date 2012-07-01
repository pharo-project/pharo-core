message category list
messageCatListSingleton

	| name |
	name := self selectedMessageCategoryName.
	^ name ifNil: [Array new]
		ifNotNil: [Array with: name]
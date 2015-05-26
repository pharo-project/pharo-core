initializeWidgets
	self title: self class name.
	kmTable := self newMultiColumnList.
	kmTable displayBlock: [ :item | self wrapItem: item ].
	kmTable sortingBlock: [ :a :b | a categoryName < b categoryName ].
	kmTable menu: [ :m :s| self menu:m shifted:s].
	filterField := self newTextInput.
	filterField removeEntryCompletion.
	filterField ghostText: 'Filter'.
	filterField autoAccept: true.
	clearFilterButton := self newButton.
	clearFilterButton icon: Smalltalk ui icons smallCancelIcon.
	clearFilterButton enabled:false.
	self collectAllShortcuts
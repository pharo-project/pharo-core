instance creation
browseVersionsOf: method class: class meta: meta category: msgCategory selector: selector lostMethodPointer: sourcePointer 
	| changeList browser |
	Cursor read showWhile:
		[changeList := (browser := self new)
			scanVersionsOf: method class: class meta: meta
			category: msgCategory selector: selector].
	changeList ifNil: [ self inform: 'No versions available'. ^nil ].

	sourcePointer ifNotNil:
		[changeList setLostMethodPointer: sourcePointer].

	self open: changeList name: 'Recent versions of ' ,
selector multiSelect: false.

	^browser
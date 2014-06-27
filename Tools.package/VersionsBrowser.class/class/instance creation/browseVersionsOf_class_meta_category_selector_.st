browseVersionsOf: method class: class meta: meta category: msgCategory selector: selector 
	| changeList |
	Cursor read showWhile:
		[changeList := self new
			scanVersionsOf: method class: class meta: meta
			category: msgCategory selector: selector].
	changeList ifNil: [ self inform: 'No versions available'. ^nil ].

	self open: changeList name: 'Recent versions of ' , selector multiSelect: false.
	^changeList
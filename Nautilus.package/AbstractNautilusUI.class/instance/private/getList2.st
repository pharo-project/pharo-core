getList2

	^ list2Elements ifNil: [ list2Elements := self loadList2 ].
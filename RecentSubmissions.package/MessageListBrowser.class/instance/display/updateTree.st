updateTree
	| prevSelected |
	prevSelected := self selectedItem.
	self updateList.
	prevSelected ifNotNil: [self selectItems: (Array with: prevSelected)]

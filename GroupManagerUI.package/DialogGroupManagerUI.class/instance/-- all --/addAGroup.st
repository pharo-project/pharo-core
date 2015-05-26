addAGroup

	| group |
	group := self groupManager groups createAnEmptyStaticGroup.
	tree updateList.
	treeModel hardlySelectItem: group.
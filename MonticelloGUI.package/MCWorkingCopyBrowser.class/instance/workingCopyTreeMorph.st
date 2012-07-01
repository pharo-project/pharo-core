morphic ui
workingCopyTreeMorph
	self halt.
	^ SimpleHierarchicalListMorph
		on: self
		list: #workingCopyTree
		selected: #workingCopyWrapper
		changeSelected: #workingCopyWrapper:
		menu: #workingCopyListMenu:
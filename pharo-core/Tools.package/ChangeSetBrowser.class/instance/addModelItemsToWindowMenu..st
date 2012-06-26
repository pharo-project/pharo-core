initialization
addModelItemsToWindowMenu: aMenu
	"Add model-related items to the given window menu"

	| oldTarget |
	oldTarget := aMenu defaultTarget.
	aMenu defaultTarget: self.
	aMenu addLine.
	aMenu add: 'Rename change set' action: #rename.
	aMenu add: 'Make changes go to me' action: #newCurrent.
	aMenu addLine.
	aMenu add: 'File out' action: #fileOut.
	aMenu add: 'Browse methods' action: #browseChangeSet.
	aMenu addLine.
	myChangeSet hasPreamble
		ifTrue:
			[aMenu add: 'Edit preamble' action: #addPreamble.
			aMenu add: 'Remove preamble' action: #removePreamble]
		ifFalse:
			[aMenu add: 'Add preamble' action: #addPreamble].

	myChangeSet hasPostscript
		ifTrue:
			[aMenu add: 'Edit postscript...' action: #editPostscript.
			aMenu add: 'Remove postscript' action: #removePostscript]
		ifFalse:
			[aMenu add: 'Add postscript...' action: #editPostscript].
	aMenu addLine.
	
	aMenu add: 'Destroy change set' action: #remove.
	aMenu addLine.
	aMenu addLine.
	aMenu add: 'What to show...' target: self action: #offerWhatToShowMenu.
	aMenu addLine.
	aMenu add: 'More...' action: #offerShiftedChangeSetMenu.
	aMenu defaultTarget: oldTarget.

	^ aMenu
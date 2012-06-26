menu
changeSetMenu: aMenu shifted: isShifted 
	"Set up aMenu to hold commands for the change-set-list pane.  This could be for a single or double changeSorter"

	isShifted ifTrue: [^ self shiftedChangeSetMenu: aMenu].
	aMenu title: 'Change Set'.
	aMenu addStayUpItemSpecial.
	aMenu add: 'Make changes go to me (m)' action: #newCurrent.
	aMenu addLine.
	aMenu add: 'New change set... (n)' action: #newSet.
	aMenu add: 'Find...(f)' action: #findChangeSet.
	aMenu add: 'Select change set...' action: #chooseChangeSet.
	aMenu addLine.
	aMenu add: 'Rename change set (r)' action: #rename.
	aMenu add: 'File out (o)' action: #fileOut.
	aMenu add: 'Browse methods (b)' action: #browseChangeSet.
	aMenu add: 'Browse change set (B)' action: #openChangeSetBrowser.
	aMenu addLine.
	parent
		ifNotNil: 
			[aMenu add: 'Copy all to other side (c)' action: #copyAllToOther.
			aMenu add: 'Submerge into other side' action: #submergeIntoOtherSide.
			aMenu add: 'Subtract other side (-)' action: #subtractOtherSide.
			aMenu addLine].
	myChangeSet hasPreamble
		ifTrue: 
			[aMenu add: 'Edit preamble (p)' action: #addPreamble.
			aMenu add: 'Remove preamble' action: #removePreamble]
		ifFalse: [aMenu add: 'Add preamble (p)' action: #addPreamble].
	myChangeSet hasPostscript
		ifTrue: 
			[aMenu add: 'Edit postscript...' action: #editPostscript.
			aMenu add: 'Remove postscript' action: #removePostscript]
		ifFalse: [aMenu add: 'Add postscript...' action: #editPostscript].
	aMenu addLine.

	aMenu add: 'Destroy change set (x)' action: #remove.
	aMenu addLine.
	aMenu add: 'More...' action: #offerShiftedChangeSetMenu.
	^ aMenu
ui requests
openChangeList: aChangeList asMorphName: labelString multiSelect: multiSelect
	"Open a morphic view for the messageSet, whose label is labelString. 
	The listView may be either single or multiple selection type"
	| window listHeight listPane |
	listHeight := 0.4.
	window := (SystemWindow labelled: labelString)
				model: aChangeList.
	listPane := multiSelect
				ifTrue: [PluggableListMorph
						on: aChangeList
						list: #list
						primarySelection: #listIndex
						changePrimarySelection: #toggleListIndex:
						listSelection: #listSelectionAt:
						changeListSelection: #listSelectionAt:put:
						menu: (aChangeList showsVersions
								ifTrue: [#versionsMenu:]
								ifFalse: [#changeListMenu:])]
				ifFalse: [PluggableListMorph
						on: aChangeList
						list: #list
						selected: #listIndex
						changeSelected: #toggleListIndex:
						menu: (aChangeList showsVersions
								ifTrue: [#versionsMenu:]
								ifFalse: [#changeListMenu:])].
	listPane keystrokeActionSelector: #changeListKey:from:.
	window
		addMorph: listPane
		frame: (0 @ 0 extent: 1 @ listHeight).
	aChangeList
		addLowerPanesTo: window
		at: (0 @ listHeight corner: 1 @ 1)
		with: nil.
	^ window openInWorld
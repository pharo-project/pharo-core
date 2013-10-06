buildListOfFieldsFor: aDebugger

	^ (PluggableListMorph new
		doubleClickSelector: #inspectSelection;
		on: aDebugger receiverInspector list: #fieldList
		selected: #selectionIndex changeSelected: #toggleIndex:
		menu: #fieldListMenu: keystroke: #inspectorKey:from:)
		autoDeselect: false;
		yourself
debugger
buildListOfContextFor: aDebugger

	^ PluggableListMorph new
		doubleClickSelector: #inspectSelection;
		on: aDebugger contextVariablesInspector
		list: #fieldList
		selected: #selectionIndex
		changeSelected: #toggleIndex:
		menu: #fieldListMenu:
		keystroke: #inspectorKey:from:
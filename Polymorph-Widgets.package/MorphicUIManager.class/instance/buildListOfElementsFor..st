debugger
buildListOfElementsFor: aDebugger

	^ (PluggableMultiColumnListMorph 
		on: aDebugger 
		list: #contextStackList
		selected: #contextStackIndex
		changeSelected: #toggleContextStackIndex:
		menu: #contextStackMenu:shifted:
		keystroke: #contextStackKey:from:
		wrapSelector: #createColumnsFor:)
		gapSize: 40;
		yourself
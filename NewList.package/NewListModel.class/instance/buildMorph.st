initialize
buildMorph
	| list |
	list :=  NewList
			on: self 
			getItemsSelector: #getItems 
			setIndexSelector: #setIndex:
			getDisplaySelector: #displayItem:.

	list adapter 
		getHeaderTitleSelector: #title;
		getMenuSelector: #menu:shifted:;
		dragEnabled: true;
		dropEnabled: true;
		isMultipleSelection: true;
		deSelectOnReclick: true;
		dropItemSelector: #drop:at:;
		getIconSelector: #iconFor:at:;
		getIconMaxSizeSelector: #iconMaxSize;
		endOfInitialization.

	list whenHeaderIsClickedDo: [ self toggleTitle ].
	list whenSelectedItemsChangedDo: [:items |
		textMorph ifNotNil: [
			textMorph setText: (String streamContents: [:s | 
				items do: [:e | s << e printString ; cr ]] )]] .
	^ list
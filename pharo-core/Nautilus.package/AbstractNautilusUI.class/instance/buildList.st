items creation
buildList

	list := PluggableIconListMorph new
				wrapSelector: #listWrapper:;
				keystrokeSelector: #keyPressedOnList:shifted:;
				getIconSelector: #listIcon:;
				getListSizeSelector: #listSize;
				resetListSelector: #resetListSelection;
				autoDeselect: true;
				dropEnabled: true;
				doubleClickSelector: #doubleClick;
				dropItemSelector: #dropInList:inARow:;
				dragEnabled: true;
				hResizing: #spaceFill;
				vResizing: #spaceFill;
				
				model: self;
				getIndexSelector: #selected;
				setIndexSelector: #selected:;
				getSelectionListSelector: #listSelectionAt:;
				setSelectionListSelector: #listSelectionAt:put:;
				getMenuSelector: #menu:shifted:;
				keystrokeSelector: nil;
				beMultipleSelection;
				
				getListElementSelector: #listElement:.
				
	self showGroups
		ifTrue: [ self setGroupShorcutsTo: list ]
		ifFalse: [ self setPackageShorcutsTo: list ].
	list
		hResizing: #spaceFill;
		vResizing: #spaceFill.	
	^ list
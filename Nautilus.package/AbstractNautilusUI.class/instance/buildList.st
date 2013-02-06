items creation
buildList

	list := PluggableIconListMorph new
				basicWrapSelector: #listWrapper:;
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
				beMultipleSelection;
				
				basicGetListElementSelector: #listElement:.
				
	self setShortcuts: #NautilusPackageShortcuts to: list.
	
	list
		hResizing: #spaceFill;
		vResizing: #spaceFill.	
	^ list
items creation
buildList2

	list2 := PluggableIconListMorph new
				basicWrapSelector: #listWrapper2:;
				keystrokeSelector: #keyPressedOnList2:shifted:;
				getIconSelector: #listIcon2:;
				getListSizeSelector: #listSize2;
				
				resetListSelector: #resetListSelection2;
				autoDeselect: true;
				dropEnabled: true;
				dropItemSelector: #dropInList2:inARow:;
				doubleClickSelector: #doubleClick2;
				dragEnabled: true;
				hResizing: #spaceFill;
				vResizing: #spaceFill;
				
				model: self;
				getIndexSelector: #selected2;
				setIndexSelector: #selected2:;
				getSelectionListSelector: #listSelection2At:;
				setSelectionListSelector: #listSelection2At:put:;
				getMenuSelector: #menu2:shifted:;
				beMultipleSelection;
				
				getListElementSelector: #listElement2:.
						
	self setGlobalShorcutsTo:  list2.					
						
	^ list2
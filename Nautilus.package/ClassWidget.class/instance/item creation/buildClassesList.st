buildClassesList
	classesList := PluggableIconListMorph new
				basicWrapSelector: #classWrapper:;
				keystrokeSelector: #keyPressedOnList:shifted:;
				getIconSelector: #classIconFor:;
				getListSizeSelector: #classListSize;
				
				resetListSelector: #resetClassesListSelection;
				autoDeselect: true;
				dropEnabled: true;
				dropItemSelector: #dropInClass:inARow:;
				doubleClickSelector: #doubleClick;
				dragEnabled: true;
				hResizing: #spaceFill;
				vResizing: #spaceFill;
				
				model: self;
				getIndexSelector: #selectedClassIndex;
				setIndexSelector: #selectedClassIndex:;
				getSelectionListSelector: #classSelectionAt:;
				setSelectionListSelector: #classSelectionAt:put:;
				getMenuSelector: #classesMenu:shifted:;
				beMultipleSelection;
				
				getListElementSelector: #getClassItem:.
						
	^ classesList
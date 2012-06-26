item creation
buildMethodsList
	
	^ methodsList :=  PluggableIconListMorph new
						keystrokeSelector: #keyPressedOnElement:; 
						getIconSelector: #methodIconFor:;
						resetListSelector: #resetMethodsListSelection;
						getListSizeSelector: #methodListSize;
						autoDeselect: true;
						dragEnabled: true; 
						hResizing: #spaceFill;
						vResizing: #spaceFill;
						
						model: self;
						getIndexSelector: #selectedMethodIndex;
						setIndexSelector: #selectedMethodIndex:;
						getSelectionListSelector: #methodSelectionAt:;
						setSelectionListSelector: #methodSelectionAt:put:;
						getMenuSelector: #elementsMenu:shifted:;
						keystrokeSelector: nil;
						beMultipleSelection;
						
						getListElementSelector: #getMethodItem:;
						
						attachKeymapCategory: #NautilusMethodShortcuts targetting: self model;
						wrapSelector: #methodWrapper:.
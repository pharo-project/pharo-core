item creation
buildMethodsList
	
	methodsList :=  PluggableIconListMorph new
						basicWrapSelector: #methodWrapper:;
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
						beMultipleSelection.

		Nautilus populateMethodList
			ifTrue: [ methodsList getListElementSelector: #getMethodItem: ]
			ifFalse: [ methodsList basicGetListElementSelector: #getMethodItem: ].	
					
		^ methodsList.
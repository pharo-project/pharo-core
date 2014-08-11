buildCategoriesList
	^ categoriesList := PluggableIconListMorph new
		basicWrapSelector: #categoryWrapper:;
		resetListSelector: #resetCategorySelection;
		keystrokeSelector: #keyPressedOnCategory:;
		autoDeselect: true;
		getListSizeSelector: #categoryListSize;
		
		dropItemSelector: #dropMethod:inARow:;
		dragEnabled: true; dropEnabled: true;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		
		getIconSelector: #categoryIconFor:; "WARNING: This needs to be set before the model"
		model: self;
		getIndexSelector: #selectedCategoryIndex;
		setIndexSelector: #selectedCategoryIndex:;
		getSelectionListSelector: #categorySelectionAt:;
		setSelectionListSelector: #categorySelectionAt:put:;
		getMenuSelector: #categoriesMenu:shifted:;
		beMultipleSelection;
		
		getListElementSelector: #getCategoryItem:;
		
		changed;
		
		yourself
	

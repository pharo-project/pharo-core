buildWidget
	^ NewList new
		model: self;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		deSelectOnReclick: self deSelectOnReclick;
		isMultipleSelection: self isMultipleSelection;
		unselectOnChange: self model unselectOnChange;
		whenSelectedIndexChangedDo: self indexHasBeenSelected;
		whenSelectedIndexesChangedDo: self indexesHasBeenSelected;
		whenSelectedItemChangedDo: self itemHasBeenSelected;
		whenSelectedItemsChangedDo: self itemsHasBeenSelected;
		whenHeaderIsClickedDo: self headerClickedBlock;
		dragEnabled: self dragEnabled;
		dropEnabled: self dropEnabled;
		endOfInitialization;
		setIndex: self selectedIndex;
		hasHeader: self hasHeader;
		yourself
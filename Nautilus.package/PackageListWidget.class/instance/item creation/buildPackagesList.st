buildPackagesList
	packagesList := self class listClass new
		basicWrapSelector: #packageItemWrapper:;
		keystrokeSelector: #keyPressedOnList:shifted:;
		getIconSelector: #packageListItemIcon:;
		getListSizeSelector: #packageListSize;
		resetListSelector: #resetPackagesSelection;
		autoDeselect: true;
		dropEnabled: true;
		doubleClickSelector: #doubleClick;
		dropItemSelector: #dropInPackageList:inARow:;
		dragEnabled: true;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		model: self;
		getIndexSelector: #selectedPackageIndex;
		setIndexSelector: #selectedPackageIndex:;
		getSelectionListSelector: #packageSelectionAt:;
		setSelectionListSelector: #packageSelectionAt:put:;
		getMenuSelector: #menu:shifted:;
		beMultipleSelection;
		basicGetListElementSelector: #getPackageItem:;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		yourself.
	^ packagesList
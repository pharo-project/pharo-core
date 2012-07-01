initialization
buildMorphicSystemCatList
	| dragNDropFlag myCatList |
	dragNDropFlag := true.
	(myCatList := PluggableListMorph new) 
			on: self list: #systemCategoryList
			selected: #systemCategoryListIndex changeSelected: #systemCategoryListIndex:
			menu: #systemCategoryMenu: keystroke: #systemCatListKey:from:.
	myCatList enableDragNDrop: dragNDropFlag.
	^myCatList

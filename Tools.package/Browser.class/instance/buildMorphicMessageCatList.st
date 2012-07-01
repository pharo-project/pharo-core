initialization
buildMorphicMessageCatList

	| myMessageCatList |

	(myMessageCatList := PluggableMessageCategoryListMorph new) 
			on: self list: #messageCategoryList
			selected: #messageCategoryListIndex changeSelected: #messageCategoryListIndex:
			menu: #messageCategoryMenu: 
			keystroke: #arrowKey:from: getRawListSelector: #rawMessageCategoryList.
	myMessageCatList enableDragNDrop: true.
	^myMessageCatList

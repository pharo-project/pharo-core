protocol
items: aCollection

	associationsWrapperToItem removeAll.
	pickedItemsHolder contents removeAll.
	pickedItemsHolder contentsChanged: false to: nil.
	listModel items: (aCollection collect: [:e | self wrap: e ]).
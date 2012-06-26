private
addPicked: item

	pickedItemsHolder contents add: item.
	pickedItemsHolder contentsChanged: true to: item.
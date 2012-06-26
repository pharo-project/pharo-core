private
removePicked: item

	pickedItemsHolder contents remove: item ifAbsent: [ ^ self ].
	pickedItemsHolder contentsChanged: false to: item.
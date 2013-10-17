byDateDescendingItem

	^ DropListItem
		named: self byDateDescendingLabel
		do: [ self model ifNotNil: [:m | m groupedByDateDescending ]]
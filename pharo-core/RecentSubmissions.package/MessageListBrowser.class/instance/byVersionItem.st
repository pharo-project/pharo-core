droplist-items
byVersionItem

	^ DropListItem
		named: self byVersionLabel
		do: [ self model ifNotNil: [:m | m groupedByVersion ]]
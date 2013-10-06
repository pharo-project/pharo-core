byClassItem

	^ DropListItem
		named: self byClassLabel
		do: [ self model ifNotNil: [:m | m groupedByClass ]]
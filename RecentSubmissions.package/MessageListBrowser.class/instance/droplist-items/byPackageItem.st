byPackageItem

	^ DropListItem
		named: self byPackageLabel
		do: [ self model ifNotNil: [:m | m groupedByPackage ]]
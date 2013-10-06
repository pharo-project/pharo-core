infoItem

	^ DropListItem
		named: self infoLabel
		do: [ wrapper := TimeStampMethodConverter method: wrapper method ]
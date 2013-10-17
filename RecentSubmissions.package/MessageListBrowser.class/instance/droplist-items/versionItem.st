versionItem

	^ DropListItem
		named: self versionLabel
		do: [ wrapper := VersionMethodReferenceConverter methodReference: wrapper method referencesList: self originalList ]
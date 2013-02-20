parsing spec
addField: aName type: aType
	fields
		at: aName
		put:
			{aType.
			(totalSize - aType typeSize)}
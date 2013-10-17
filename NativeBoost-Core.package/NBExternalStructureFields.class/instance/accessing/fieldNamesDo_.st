fieldNamesDo: aBlock

	^ fields keysDo: [:name | aBlock value: name ]
retrieveItems

	^ self model getItems	ifNil: [ selectedItems value ]
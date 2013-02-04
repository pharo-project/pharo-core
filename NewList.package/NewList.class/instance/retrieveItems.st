communication with model
retrieveItems

	^ self model getItems	ifNil: [ selectedItems contents ]
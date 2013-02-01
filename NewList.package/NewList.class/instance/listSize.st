communication with model
listSize

	^ listSize contents ifNil: [ self retrieveListSize ]
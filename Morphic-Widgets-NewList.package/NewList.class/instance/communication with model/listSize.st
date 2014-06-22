listSize

	^ listSize value ifNil: [ self retrieveListSize ]
getTextSelector
	^ getTextSelector ifNil: [  getTextSelector := #getText ]
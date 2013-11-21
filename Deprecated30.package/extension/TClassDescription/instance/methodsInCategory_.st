methodsInCategory: aName 
	"Answer a list of the methods of the receiver that are in category named aName"
	self deprecated: 'Use selectorsInProtocol: instead' on: '28 August 2013' in: #'Pharo3.0'.
	^ self selectorsInProtocol: aName
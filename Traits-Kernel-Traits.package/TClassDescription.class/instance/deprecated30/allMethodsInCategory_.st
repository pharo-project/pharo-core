allMethodsInCategory: aName 
	"Answer a list of all the methods of the receiver and all its 
	superclasses that are in the category named aName"
	self deprecated: 'Use allSelectorsInProtocol: ' on: '28 August 2013' in: #'Pharo3.0'.
	^ self allSelectorsInProtocol: aName
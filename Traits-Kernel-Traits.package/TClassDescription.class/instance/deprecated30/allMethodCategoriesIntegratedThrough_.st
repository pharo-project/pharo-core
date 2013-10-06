allMethodCategoriesIntegratedThrough: mostGenericClass
	"Answer a list of all the method categories of the receiver and all its superclasses, up through mostGenericClass"
	self deprecated: 'Use allProtocolsUpTo:' on: '28 August 2013' in: #'Pharo3.0'.
	^ self allProtocolsUpTo: mostGenericClass
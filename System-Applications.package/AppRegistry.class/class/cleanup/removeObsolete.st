removeObsolete
	"AppRegistry removeObsolete"
	self registeredClasses copy do:[:cls| 
		(cls class isObsolete or:[cls isBehavior and:[cls isObsolete]]) 
			ifTrue:[self unregister: cls]].
	self subclasses do:[:cls| cls removeObsolete].
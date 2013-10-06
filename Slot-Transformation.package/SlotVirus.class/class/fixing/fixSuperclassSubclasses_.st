fixSuperclassSubclasses: cls
	|collection newSubclasses|
	cls superclass 
		ifNil: [ ^ self ].
	cls superclass addSubclass: cls.
	
*Nautilus
createPackageNamed: aString

	| instance |
	(packages includesKey: (Symbol readFromString:  '#''', aString,'''' ))
		ifTrue: [ 
			self openAlreadyExistingError.
			^ nil ].
	
	instance := self packageClass named: aString.
	self registerPackage: instance.
	^ instance
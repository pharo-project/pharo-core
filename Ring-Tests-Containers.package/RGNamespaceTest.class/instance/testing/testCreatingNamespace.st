testCreatingNamespace
	| newNamespace newPackage newClass |
	
	newNamespace := RGFactory current createNamespaceNamed: #'RingNamespace'.
	newPackage := RGFactory current createPackageNamed: #'Collections-Sequenceable'.
	newClass:= RGFactory current createClassNamed: #OrderedCollection.
	newPackage addClass: newClass.
	newNamespace addPackage: newPackage;
		addClass: newClass.
	
	self assert: (newNamespace isNamespace).
	self assert: ((newNamespace packageNamed: #'Collections-Sequenceable') == newPackage).
	self assert: ((newNamespace classNamed: #OrderedCollection) == newClass).
	self assert: (newNamespace methods isEmpty).
	self assert: (newNamespace pools isEmpty).
	self assert: (newNamespace globalVariables isEmpty).
	
	newNamespace removeClass: newClass.
	self assert: ((newNamespace classNamed: #OrderedCollection) isNil).
	self assert: ((newPackage classNamed: #OrderedCollection) notNil).
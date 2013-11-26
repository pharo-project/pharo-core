loadList2
	^ self showPackages
		ifTrue: [		
			self showHierarchy
				ifTrue: [ self getClassHierarchy2 ]
				ifFalse: [ self getPackagesList2 ] ]
		ifFalse: [
			cachedHierarchy
				ifNotNil: [:col | col sortedElements ]
				ifNil: [ self getClassHierarchy ] ]
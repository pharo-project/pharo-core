findPackageIn: aPackageNamesList

	| pattern foundPackage |
	aPackageNamesList size = 0
		ifTrue: [pattern := UIManager default request: 'Package name or fragment?']
		ifFalse: [pattern := UIManager default 
				enterOrRequestFrom: aPackageNamesList 
				lines: #() 
				title: 'Package name or fragment?'].
	pattern isEmptyOrNil ifTrue: [^ self flashPackage ].
	foundPackage := self systemNavigation packageFromPattern: pattern withCaption: ''.
	foundPackage ifNil: [^ self flashPackage].
	^ foundPackage
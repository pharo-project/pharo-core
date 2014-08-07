findPackageIn: aPackageNamesList
	| pattern foundPackage |
	pattern := aPackageNamesList size = 0
		ifTrue: [ UIManager default request: 'Package name or fragment?' ]
		ifFalse: [ UIManager default enterOrRequestFrom: aPackageNamesList lines: #() title: 'Package name or fragment?' ].
	pattern isEmptyOrNil
		ifTrue: [ ^ self flashPackage ].
	foundPackage := self packageFromPattern: pattern withCaption: ''.
	foundPackage ifNil: [ ^ self flashPackage ].
	^ foundPackage
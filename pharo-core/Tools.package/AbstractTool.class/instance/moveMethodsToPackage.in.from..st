method
moveMethodsToPackage: aCollection in: packagesList from: aPackage

	"Search for a package from a pattern or from the recent list"
	| pattern foundPackage |

	aCollection ifEmpty: [^ self ].

	packagesList size = 0
		ifTrue: [pattern := UIManager default request: 'Package name or fragment?']
		ifFalse: [pattern := UIManager default 
				enterOrRequestFrom: packagesList 
				lines: #() 
				title: 'Package name or fragment?'].
	pattern isEmptyOrNil ifTrue: [^ self flashPackage ].
	foundPackage := self systemNavigation packageFromPattern: pattern withCaption: ''.
	foundPackage ifNil: [^ self flashPackage].
	
	aPackage = foundPackage ifTrue: [ ^ self ].
	
	aCollection do: [:each |
		self moveMethod: each inPackage: foundPackage ].
		

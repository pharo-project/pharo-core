menus behavior
findPackage

	"Search for a package from a pattern or from the recent list"
	| foundPackage packagesList |
	self okToChange ifFalse: [^ self ].

	packagesList := (self model recentClasses elements collect: [:each | each package name]) asSet asArray sort.

	foundPackage := self findPackageIn: packagesList.
	foundPackage ifNil: [ ^ self ].
	self selectedPackage = foundPackage ifTrue: [ ^ self ].
	
	self selectedPackage: foundPackage.
	self updatePackageViewAndMove.

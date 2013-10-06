moveMethodToPackage
	"Search for a package from a pattern or from the recent list"	
	
	| packagesList  |	
	self okToChange ifFalse: [^ self flashPackage ].
	packagesList := self model packages collect: [:each | each name ].
	
	self moveMethodsToPackage: self selectedMethods in: packagesList  from: self selectedPackage.

	self update.
		

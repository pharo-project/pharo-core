systemCategoryRemovedActionFrom: ann
	| rPackage categoryNameSymbol managers |
	
	categoryNameSymbol := ann categoryName asSymbol.
	
	self flag: #hack. "for decoupling MC"
	managers := (self respondsTo: #allManagers)
		ifTrue: [ self perform: #allManagers ]
		ifFalse: [ #() ].
		
	"here we check that a corresponding MCPackage does not still exist. In this case we should keep the RPackage"
	managers
		detect: [ :each | 
			self category: each packageName matches: categoryNameSymbol asString] 
		ifNone: [
			rPackage := packages at: categoryNameSymbol ifAbsent: [^ self].
			"if no MCPackage exist, we unregister the package from the RPackageOrganizer"
			self basicUnregisterPackageNamed: categoryNameSymbol ].
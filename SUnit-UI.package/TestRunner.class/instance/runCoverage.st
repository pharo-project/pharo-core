actions
runCoverage
	| packages methods |
	packages := Set new.
	self addDeclaredPackagesUnderTestTo: packages.
	packages isEmpty ifTrue: 
		[ packages := self promptForPackages ].
	methods := OrderedCollection new.
	self 
		addMethodsUnderTestIn: packages
		to: methods.
	self excludeClassesNotUnderTestFrom: methods.
	methods isEmpty ifTrue: 
		[ ^ UIManager default inform: 'No methods found for coverage analysis.' ].
	self collectCoverageFor: methods

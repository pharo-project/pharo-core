class
browseClassRefsOf: aClass

	| class |
	aClass ifNil: [ ^false ].
	class := aClass theNonMetaClass ifNil: [^self].
	class isTrait 
		ifTrue: [self systemNavigation browseAllUsersOfTrait: class]
		ifFalse: [self systemNavigation browseAllCallsOnClass: class]

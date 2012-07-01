accessing
packageDefiningOrExtendingSelector: aSelector inClassNamed: aClassNameSymbol
	"this implementation is slower
		aClass packages detect: [:each | each includesSelector: aSelector ofClass: aClass ]"
	| classPackage |
	
	classPackage := self packageOfClassNamed: aClassNameSymbol.
	(classPackage includesSelector: aSelector ofClassName: aClassNameSymbol)
		ifTrue: [ ^classPackage ].
		
	^(self extendingPackagesOfClassNamed: aClassNameSymbol)
		detect: [ :p | p includesSelector: aSelector ofClassName: aClassNameSymbol ]
		ifNone: [ self error: ('No package found for selector {1} in class {2}' 
									format: { aSelector . aClassNameSymbol }) ]
test utility
referencesInClass: aClass
	| classes |
	classes := IdentitySet new.
	aClass isTrait
		ifFalse: [ classes add: aClass superclass ].
	
	"The following line is wrong because methods may be defined in a different package"
	"aClass methods do: [ :cm | classes addAll: (self referencesInCompiledMethod: cm) ]."
	^ classes
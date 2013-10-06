selectMethodsForExtantClasses
	"Select methods for classes which are in the current image"
	
	^self selectSuchThat:
		[ :change | Smalltalk globals hasClassNamed: change methodClassName]
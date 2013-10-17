allIconSetClasses
	"Answer the subclasses of the receiver that are considered to be
	concrete (useable as a theme)."

	^(self allSubclasses reject: #isAbstract) 
		asSortedCollection: [:a :b | a iconSetName <= b iconSetName]
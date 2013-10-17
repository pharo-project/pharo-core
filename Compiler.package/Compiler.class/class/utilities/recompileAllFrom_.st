recompileAllFrom: firstName 
	"Recompile all classes, starting with given name.
	usefull for debugging"

	Smalltalk globals allClassesAndTraitsDo: 
		[:class | class name >= firstName
			ifTrue: 
				[Transcript show: class name; cr.
				class recompile]]

	"Compiler recompileAllFrom: 'AAABodyShop'."

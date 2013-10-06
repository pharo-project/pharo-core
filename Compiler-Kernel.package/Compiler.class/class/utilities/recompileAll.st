recompileAll
	"Recompile all classes and traits in the system."

	Smalltalk allClassesAndTraits 
		do: [:classOrTrait | classOrTrait compileAll] 
		displayingProgress: 'Recompiling all classes and traits'. 



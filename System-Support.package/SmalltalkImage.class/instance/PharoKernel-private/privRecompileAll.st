privRecompileAll

	Smalltalk allClassesAndTraits do: [:classOrTrait | classOrTrait compileAll ].

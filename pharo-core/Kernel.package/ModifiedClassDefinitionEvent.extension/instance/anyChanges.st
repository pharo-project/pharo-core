*Kernel-Classes
anyChanges
	^ self isSuperclassModified or: [self areInstVarsModified or: [self areClassVarsModified or: [self areSharedPoolsModified or: [self isTraitCompositionModified]]]]
testLayoutIntegrity
	SystemNavigation default allClassesDo: [ :class |
		class theNonMetaClass layout checkIntegrity.
		class theMetaClass layout checkIntegrity ]
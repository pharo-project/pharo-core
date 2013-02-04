*RPackage-Core
isEmpty
	^(self classesAndMetaClassesNotDefinedInSubCategories, 
	 self coreMethodsNotDefinedInSubCategories, 
	 self extensionMethodsNotDefinedInSubCategories)
	isEmpty  
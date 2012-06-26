*RPackage-Core
coreMethodsNotDefinedInSubCategories

	^ self classesAndMetaClassesNotDefinedInSubCategories gather: [:class | self coreMethodsForClass: class]
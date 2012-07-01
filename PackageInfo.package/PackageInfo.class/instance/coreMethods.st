listing
coreMethods
	^ self classesAndMetaClasses gather: [:class | self coreMethodsForClass: class]
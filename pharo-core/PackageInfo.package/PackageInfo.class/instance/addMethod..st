modifying
addMethod: aMethodReference
	(self includesClass: aMethodReference actualClass)
		ifTrue: [self addCoreMethod: aMethodReference]
		ifFalse: [self addExtensionMethod: aMethodReference]
testing
extensionMethodsFromClasses: classes
	^classes
		gather: [:class | self extensionMethodsForClass: class]
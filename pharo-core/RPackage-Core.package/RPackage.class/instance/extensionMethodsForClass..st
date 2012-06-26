accessing
extensionMethodsForClass: aClass

	^ (self extensionSelectorsForClass: aClass) collect: [ :each | aClass >> each ]
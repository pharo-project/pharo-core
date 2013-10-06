externalName
	^ self assureExtension externalName ifNil: [super externalName]
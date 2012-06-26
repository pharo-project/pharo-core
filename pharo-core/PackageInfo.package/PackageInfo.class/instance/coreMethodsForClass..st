testing
coreMethodsForClass: aClass
	^ (aClass selectors asSet difference:
		((self foreignExtensionMethodsForClass: aClass) collect: [:r | r selector]))
			asArray collect: [:sel | self referenceForMethod: sel ofClass: aClass]
methodsIconsCache

	^ MethodsIconsCache ifNil: [ MethodsIconsCache := WeakIdentityKeyDictionary new ]
basicCheck: aMethod
	^ aMethod overriddenMethods anySatisfy: #isDeprecated
listing
methods
	^ (self extensionMethods, self coreMethods) select: [:method |
		method isValid
			and: [method isLocalSelector
			and: [method selector isDoIt not]]]
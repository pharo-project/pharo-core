detail information
createDescriptionWith: anECContext 
	^ self
		findMethodWith: anECContext
		do: [:clazz :method | self
				methodSourceDescription: clazz
				method: method
				]
		ifAbsent: [:selector | self implementorsDescription: selector]
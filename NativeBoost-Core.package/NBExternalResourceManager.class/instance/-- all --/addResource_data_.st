addResource: anObject data: resourceData

	registry add: anObject executor: 
		(NBExternalResourceExecutor new resourceClass: anObject class data: resourceData)
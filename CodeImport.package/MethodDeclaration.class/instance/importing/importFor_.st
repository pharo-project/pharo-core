importFor: requestor
	(self existsBehavior)
		ifFalse: [ self error: ('Cannot install method in unexistent behavior {1}' format: { behaviorName asString } ) ].
	
	requestor ifNotNil: [ 
		requestor contents ifNil: [
			requestor contents: contents ]].
	
	^self targetClass
		compile: contents
		classified: categoryName
		withStamp: stamp
		notifying: requestor